using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Role;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;

namespace AslaveCare.Service.Services.v1
{
    public class RoleService : ServiceBase<RoleAddModel, RoleUpdateModel, RolePatchModel, RoleGetModel, RoleModel, Role, Guid>, IRoleService
    {
        public RoleService(IRoleRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
        }
    }
}