using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Infra.Data.Repositories.v1
{
    public class RoleRepository : RepositoryBase<BaseContext, Role, Guid>, IRoleRepository
    {
        public RoleRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override async Task<Role> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await base.GetByIdAsync(id, cancellationToken);
        }

        public async Task<List<Role>> GetToListAsync(CancellationToken cancellation = default)
        {
            return await _context.Roles
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null))
                .Where(x => x.UserType != UserType.Master)
                .ToListAsync(cancellation);
        }
    }
}