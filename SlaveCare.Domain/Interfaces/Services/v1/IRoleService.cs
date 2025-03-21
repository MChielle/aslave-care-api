using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.Role;
using System;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IRoleService : IServiceBase<RoleAddModel, RoleUpdateModel, RolePatchModel, RoleGetModel, RoleModel, Guid>
    {
    }
}