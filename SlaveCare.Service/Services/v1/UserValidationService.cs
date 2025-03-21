using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Models.v1.UserValidation;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses.Messages;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;
using System.Threading.Tasks;

namespace SlaveCare.Service.Services.v1
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