using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.UserValidation;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IUserValidationService : IServiceBase<UserValidationAddModel, UserValidationUpdateModel, UserValidationPatchModel, UserValidationGetModel, UserValidationModel, Guid>
    {
        Task<IResponseBase> SoftDeleteById(Guid id);
    }
}