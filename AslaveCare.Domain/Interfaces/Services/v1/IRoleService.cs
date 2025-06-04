using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.Role;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IRoleService : IServiceBase<RoleAddModel, RoleUpdateModel, RolePatchModel, RoleGetModel, RoleModel, Guid>
    {
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}