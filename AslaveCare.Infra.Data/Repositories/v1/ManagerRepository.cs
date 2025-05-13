using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Infra.Data.Repositories.v1
{
    public class ManagerRepository : RepositoryBase<BaseContext, Manager, Guid>, IManagerRepository
    {
        public ManagerRepository(BaseContext context, IRepositoryContext repositoryContext)
           : base(context, repositoryContext)
        {
        }

        public async Task<Manager> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken = default)
        {
            return await _context.Managers
                .Where(x => x.UserId == userId)
                .AsNoTracking()
                .FirstOrDefaultAsync(cancellationToken);
        }

        public override async Task<Manager> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await _context.Managers
                .Where(x => x.Id == id)
                .AsNoTracking()
                .FirstOrDefaultAsync(cancellationToken);
        }
    }
}