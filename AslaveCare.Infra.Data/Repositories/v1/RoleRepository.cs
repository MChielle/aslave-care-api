using System;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;

namespace AslaveCare.Infra.Data.Repositories.v1
{
    public class RoleRepository : RepositoryBase<BaseContext, Role, Guid>, IRoleRepository
    {
        public RoleRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override Task<Role> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }
    }
}
