using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Interfaces.Services.v1.Notification;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Models.v1.UserValidation;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Domain.Responses.Messages;
using AslaveCare.Service.Helpers;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1
{
    //TODO Refatorar e organizar métodos.
    public class UserService : ServiceBase<UserAddModel, UserUpdateModel, UserPatchModel, UserGetModel, UserModel, User, Guid>, IUserService
    {
        private readonly IJwtService _jwtService;
        private readonly IUserRepository _repository;
        private readonly IUserValidationService _userValidationService;
        private readonly INotificationService _notificationService;

        public UserService(IUserRepository repository, INotificationService notificationService,
            IUserValidationService userValidationService, IJwtService jwtService,
            IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
            _repository = repository;
            _notificationService = notificationService;
            _userValidationService = userValidationService;
            _jwtService = jwtService;
        }

        public async Task<IResponseBase> GetByEmailAsync(string email)
        {
            var user = await _repository.GetByEmailAsync(email);
            if (user == null) return new NoContentResponse();
            return new OkResponse<UserModel>(Mapper.Map<UserModel>(user));
        }

        public async Task<IResponseBase> GetByPhoneNumberAsync(string phoneNumber)
        {
            var user = await _repository.GetByPhoneNumberAsync(phoneNumber);
            if (user == null) return new NoContentResponse();
            return new OkResponse<UserModel>(Mapper.Map<UserModel>(user));
        }

        public async Task<IResponseBase> AddUserWithRoleAsync(UserAddModel userModel, UserType userType)
        {
            var user = await _repository.AddUserWithRoleAsync(Mapper.Map<User>(userModel), userType);
            if (user == null) return new NoContentResponse();
            return new OkResponse<UserModel>(Mapper.Map<UserModel>(user));
        }

        public async Task<IResponseBase> SoftDeleteById(Guid id)
        {
            var user = await _repository.GetCompleteByIdAsync(id);
            if (user == null) return new NoContentResponse();
            user = RemoveUserSensitiveData(user);
            await _repository.UpdateAsync(user);
            await _userValidationService.SoftDeleteById(user.UserValidationId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        public async Task<IResponseBase> SoftDeleteByEmail(string email)
        {
            var user = await _repository.GetByEmailAsync(email);

            if (user == null) return new NoContentResponse();
            user = RemoveUserSensitiveData(user);
            await _repository.UpdateAsync(user);
            await _userValidationService.SoftDeleteById(user.UserValidationId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        public async Task<IResponseBase> SoftDeleteByPhoneNumber(string phoneNumber)
        {
            var user = await _repository.GetByPhoneNumberAsync(phoneNumber);
            if (user == null) return new NoContentResponse();
            user = RemoveUserSensitiveData(user);
            await _repository.UpdateAsync(user);
            await _userValidationService.SoftDeleteById(user.UserValidationId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        private User RemoveUserSensitiveData(User user)
        {
            user.PhoneNumber = "DELETED";
            user.Email = "DELETED";
            user.Name = "DELETED";
            user.AppleUserId = "DELETED";
            user.Password = null;
            user.DeletionDate = DateTime.UtcNow;
            return user;
        }

        public async Task UpdateLastLoginAsync(Guid id)
        {
            var user = await _repository.GetByIdAsync(id);
            user.LastLogin = DateTime.UtcNow;
            await _repository.UpdateAsync(user);
        }

        public async Task<IResponseBase> ChangePassword(UserModel userModel)
        {
            var user = Mapper.Map<User>(userModel);
            user = await _repository.UpdateAsync(user);
            if (user == null) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, null);
            return new OkResponse<object>(null);
        }

        public override async Task<IResponseBase> UpdateAsync(UserUpdateModel model)
        {
            var user = await _repository.GetCompleteByIdAsync(model.Id);
            if (user == null) return new NoContentResponse();

            if (user.UserValidation == null) return new BadRequestResponse(ConstantMessages.CRUD_USER_HAS_NO_VALIDATION, null);

            IResponseBase response;

            if (model.PhoneNumber != user.PhoneNumber)
            {
                var usedPhoneNumber = await _repository.GetByPhoneNumberAsync(model.PhoneNumber);
                if (usedPhoneNumber != null) return new ConflictResponse(ConstantMessages.CRUD_PHONE_CONFLICT);
                user.UserValidation.PhoneNumberValidated = false;
                user.UserValidation.PhoneNumberConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode();
                response = await _userValidationService.AddOrUpdateAsync(Mapper.Map<UserValidationModel>(user.UserValidation));
                if (!response.IsSuccess) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, null);
                var message = string.Format(ConstantMessages.MESSAGE_SMS_CONFIRMATION_CODE, user.UserValidation.PhoneNumberConfirmationCode);
                //await _notificationService.SendSmsMessage(model.PhoneNumber, message, user.Country.Id);
            }

            if (model.Email != user.Email)
            {
                var usedEmail = await _repository.GetByEmailAsync(model.Email);
                if (usedEmail != null) return new ConflictResponse(ConstantMessages.CRUD_EMAIL_CONFLICT);
                user.UserValidation.EmailValidated = false;
                user.UserValidation.EmailConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode();
                response = await _userValidationService.AddOrUpdateAsync(Mapper.Map<UserValidationModel>(user.UserValidation));
                if (!response.IsSuccess) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, null);
                await _notificationService.SendValidationCodeNotificationEmailAsync(model.Name, model.Email, user.UserValidation.EmailConfirmationCode);
            }

            user.Email = model.Email;
            user.Name = model?.Name ?? user.Name;
            user.PhoneNumber = model.PhoneNumber ?? user.PhoneNumber;
            user.LastChangeDate = DateTime.UtcNow;

            user = await _repository.UpdateAsync(user);

            return new OkResponse<UserGetModel>(Mapper.Map<UserGetModel>(user));
        }

        public async Task<IResponseBase> UpdateByTokenAsync(string jwtToken, UserUpdateModel model)
        {
            var userId = _jwtService.GetUserIdFromToken(jwtToken);
            model.Id = userId;
            return await UpdateAsync(model);
        }

        public async Task<IResponseBase> GetByAppleUserIdAsync(string appleUserId, CancellationToken cancellationToken = default)
        {
            var customer = await _repository.GetByAppleUserIdAsync(appleUserId, cancellationToken);
            if (customer == null) return new NoContentResponse();
            return new OkResponse<UserModel>(Mapper.Map<UserModel>(customer));
        }

        public async Task<IResponseBase> CheckPhoneNumberByToken(string jwtToken, string phoneNumber)
        {
            var userId = _jwtService.GetUserIdFromToken(jwtToken);
            var user = await _repository.GetByPhoneNumberAsync(phoneNumber);

            if (user != null && user.Id != userId) return new ConflictResponse(ConstantMessages.CRUD_PHONE_CONFLICT);

            user = await _repository.GetCompleteByIdAsync(userId);
            if (user == null) return new UnauthorizedResponse();

            user.UserValidation.PhoneNumberConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode();
            var response = await _userValidationService.AddOrUpdateAsync(Mapper.Map<UserValidationModel>(user.UserValidation));
            if (!response.IsSuccess) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, null);
            var message = string.Format(ConstantMessages.MESSAGE_SMS_CONFIRMATION_CODE, user.UserValidation.PhoneNumberConfirmationCode);

            //response = await _notificationService.SendSmsMessage(phoneNumber, message, user.Country.Id);
            return new OkResponse<bool>(response.IsSuccess);
        }

        public async Task<IResponseBase> ValidateAndUpdatePhoneNumberByToken(string jwtToken, string phoneNumber, string confirmationCode)
        {
            var userId = _jwtService.GetUserIdFromToken(jwtToken);

            var user = await _repository.GetByPhoneNumberAsync(phoneNumber);

            if (user != null && user.Id != userId) return new ConflictResponse(ConstantMessages.CRUD_PHONE_CONFLICT);

            user = await _repository.GetCompleteByIdAsync(userId);
            if (user == null) return new UnauthorizedResponse();

            if (user.UserValidation.PhoneNumberConfirmationCode != confirmationCode) return new UnauthorizedResponse();

            user.PhoneNumber = phoneNumber;
            user.UserValidation.PhoneNumberConfirmationCode = null;
            user.UserValidation.PhoneNumberValidated = true;

            var response = await _userValidationService.AddOrUpdateAsync(Mapper.Map<UserValidationModel>(user.UserValidation));
            if (!response.IsSuccess) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, null);
            user = await _repository.UpdateAsync(user);
            if (user == null) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, null);

            return new OkResponse<UserGetModel>(Mapper.Map<UserGetModel>(user));
        }

        public override async Task<IResponseBase> Patch(Guid id, UserPatchModel model)
        {
            var response = await base.Patch(id, model);
            if (!response.IsSuccess) return response;
            var userGetModel = ((OkResponse<UserGetModel>)response).Data;
            response = await _userValidationService.GetCompleteByIdAsync(userGetModel.UserValidationId);
            if (!response.IsSuccess) return response;
            var userValidationModel = ((OkResponse<UserValidationModel>)response).Data;
            userGetModel.UserValidation = Mapper.Map<UserValidationGetWithoutSensitiveDataModel>(userValidationModel);
            return new OkResponse<UserGetModel>(userGetModel);
        }
    }
}