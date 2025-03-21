using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Core;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories.v1
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