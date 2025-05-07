using System;
using System.Threading.Tasks;
using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.UserValidation;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IUserValidationService : IServiceBase<UserValidationAddModel, UserValidationUpdateModel, UserValidationPatchModel, UserValidationGetModel, UserValidationModel, Guid>
    {
        Task<IResponseBase> SoftDeleteById(Guid id);
    }
}
