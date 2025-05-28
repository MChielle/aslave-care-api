using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Role;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Domain.Responses;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Threading;

namespace AslaveCare.Service.Services.v1
{
    public class RoleService : ServiceBase<RoleAddModel, RoleUpdateModel, RolePatchModel, RoleGetModel, RoleModel, Role, Guid>, IRoleService
    {
        private readonly IRoleRepository _repository;

        public RoleService(IRoleRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
            _repository = repository;
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RoleGetModel>>(Mapper.Map<IEnumerable<RoleGetModel>>(entities));
        }
    }
}