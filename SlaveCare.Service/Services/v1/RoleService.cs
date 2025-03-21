using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Models.v1.Role;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;

namespace SlaveCare.Service.Services.v1
{
    public class RoleService : ServiceBase<RoleAddModel, RoleUpdateModel, RolePatchModel, RoleGetModel, RoleModel, Role, Guid>, IRoleService
    {
        public RoleService(IRoleRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
        }
    }
}