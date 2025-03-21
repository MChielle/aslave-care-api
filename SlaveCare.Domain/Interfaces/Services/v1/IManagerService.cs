using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.Manager;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IManagerService : IServiceBase<ManagerAddModel, ManagerUpdateModel, ManagerPatchModel, ManagerGetModel, ManagerModel, Guid>

    {
        Task<IResponseBase> SoftDeleteById(Guid id);

        Task<IResponseBase> SoftDeleteByUserId(Guid userId);
    }
}