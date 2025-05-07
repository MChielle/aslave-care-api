using System;
using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.Role;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IRoleService : IServiceBase<RoleAddModel, RoleUpdateModel, RolePatchModel, RoleGetModel, RoleModel, Guid>
    {
    }
}
