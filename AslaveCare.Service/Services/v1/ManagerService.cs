using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Models.v1.Manager;
using AslaveCare.Domain.Models.v1.SignIn;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Domain.Responses.Messages;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1
{
    public class ManagerService : ServiceBase<ManagerAddModel, ManagerUpdateModel, ManagerPatchModel, ManagerGetModel, ManagerModel, Manager, Guid>, IManagerService
    {
        private readonly IManagerRepository _repository;

        private readonly ISignUpService _signUpService;
        private readonly IUserService _userService;

        public ManagerService(IManagerRepository repository, IServiceContext serviceContext, ISignUpService signUpService, IUserService userService)
            : base(repository, serviceContext)
        {
            _repository = repository;
            _signUpService = signUpService;
            _userService = userService;
        }

        public override async Task<IResponseBase> AddAsync(ManagerAddModel model)
        {
            var response = await _signUpService.SignUpGenericAsync(model.SignUp, UserType.Manager);
            if (!response.IsSuccess) return response;
            var user = ((OkResponse<UserModel>)response).Data;
            model.UserId = user.Id;
            var Manager = await _repository.AddAsync(Mapper.Map<Manager>(model));
            if (Manager == null) return new BadRequestResponse(ConstantMessages.CRUD_CREATE_FAIL, response);
            //if (!string.IsNullOrEmpty(model.PhotoBase64String))
            //{
            //    var uploadResponse = await _s3FileService.UploadImageToS3(Manager.Id.ToString(), model.PhotoBase64String, ImageFileType.Photo);
            //    Manager.PhotoPath = uploadResponse.S3FileUrl;
            //    Manager = await _repository.UpdateAsync(Manager);
            //}
            return new OkResponse<ManagerGetModel>(Mapper.Map<ManagerGetModel>(Manager));
        }

        public override async Task<IResponseBase> UpdateAsync(ManagerUpdateModel model)
        {
            var manager = await _repository.GetByIdAsync(model.Id);
            if (manager == null) return new NoContentResponse();
            var managerUpdated = Mapper.Map<Manager>(model);
            //if (!string.IsNullOrEmpty(model.PhotoBase64String))
            //{
            //    var uploadResponse = await _s3FileService.UploadImageToS3(model.Id.ToString(), model.PhotoBase64String, ImageFileType.Photo);
            //    managerUpdated.PhotoPath = uploadResponse.S3FileUrl;
            //}
            //managerUpdated.PhotoPath = manager.PhotoPath;
            await _userService.UpdateAsync(model.User);
            manager = await _repository.UpdateAsync(managerUpdated);
            return new OkResponse<ManagerGetModel>(Mapper.Map<ManagerGetModel>(manager));
        }

        public async Task<IResponseBase> SoftDeleteById(Guid id)
        {
            var entity = await _repository.GetByIdAsync(id);
            if (entity == null) return new NoContentResponse();
            //if (entity.PhotoPath != null) await _s3FileService.DeleteImageFromS3(entity.PhotoPath, ImageFileType.Photo);
            entity = RemoveManagerSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            await _userService.SoftDeleteById(entity.UserId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        public async Task<IResponseBase> SoftDeleteByUserId(Guid userId)
        {
            var entity = await _repository.GetByUserIdAsync(userId);
            if (entity == null) return new NoContentResponse();
            //if (entity.PhotoPath != null) await _s3FileService.DeleteImageFromS3(entity.PhotoPath, ImageFileType.Photo);
            entity = RemoveManagerSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            await _userService.SoftDeleteById(entity.UserId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        private Manager RemoveManagerSensitiveData(Manager entity)
        {
            entity.PhotoPath = null;
            entity.DeletionDate = DateTime.UtcNow;
            return entity;
        }

        public async Task<IResponseBase> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken)
        {
            var manager = await _repository.GetByUserIdAsync(userId, cancellationToken);
            if (manager == null) return new NoContentResponse();
            return new OkResponse<GenericUserProfileGetWithoutSensitiveDataModel>(Mapper.Map<GenericUserProfileGetWithoutSensitiveDataModel>(manager));
        }

        public async Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellationToken)
        {
            var manager = await _repository.GetByIdToUpdateAsync(id, cancellationToken);
            if (manager == null) return new NoContentResponse();
            return new OkResponse<GenericUserProfileGetWithoutSensitiveDataModel>(Mapper.Map<GenericUserProfileGetWithoutSensitiveDataModel>(manager));
        }

        public async Task<IResponseBase> GetAnyToListAsync(CancellationToken cancellationToken)
        {
            var manager = await _repository.GetAnyToListAsync(cancellationToken);
            if (manager == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<GenericUserProfileGetWithoutSensitiveDataModel>>(Mapper.Map<IEnumerable<GenericUserProfileGetWithoutSensitiveDataModel>>(manager));
        }
    }
}