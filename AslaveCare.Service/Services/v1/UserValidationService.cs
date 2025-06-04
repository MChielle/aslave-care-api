using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.UserValidation;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Domain.Responses.Messages;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1
{
    public class UserValidationService : ServiceBase<UserValidationAddModel, UserValidationUpdateModel, UserValidationPatchModel, UserValidationGetModel, UserValidationModel, UserValidation, Guid>, IUserValidationService
    {
        private readonly IUserValidationRepository _repository;

        public UserValidationService(IUserValidationRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
            _repository = repository;
        }

        public async Task<IResponseBase> SoftDeleteById(Guid id)
        {
            var entity = await _repository.GetByIdAsync(id);
            if (entity == null) return new NoContentResponse();
            entity = RemoveUserValidationSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        private UserValidation RemoveUserValidationSensitiveData(UserValidation userValidation)
        {
            userValidation.EmailConfirmationCode = null;
            userValidation.PhoneNumberConfirmationCode = null;
            userValidation.EmailValidated = false;
            userValidation.PhoneNumberValidated = false;
            userValidation.DeletionDate = DateTime.UtcNow;
            return userValidation;
        }
    }
}