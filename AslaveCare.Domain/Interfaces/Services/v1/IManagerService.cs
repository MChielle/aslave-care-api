using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.Manager;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IManagerService : IServiceBase<ManagerAddModel, ManagerUpdateModel, ManagerPatchModel, ManagerGetModel, ManagerModel, Guid>

    {
        Task<IResponseBase> SoftDeleteById(Guid id);

        Task<IResponseBase> SoftDeleteByUserId(Guid userId);
    }
}