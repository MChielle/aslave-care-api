using AslaveCare.Domain.Entities;
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
    public class RegisterOutStockRepository : MtMRepositoryBase<BaseContext, RegisterOutStock, Guid, Guid>, IRegisterOutStockRepository
    {
        public RegisterOutStockRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override async Task<RegisterOutStock> GetByIdsAsync(Guid registerOutId, Guid stockId, CancellationToken cancellationToken = default)
        {
            return await _context.RegisterOutStocks
                .Where(x => x.RegisterOutId.Equals(registerOutId) && x.StockId.Equals(stockId))
                .AsNoTracking()
                .FirstOrDefaultAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegisterOutStock>> GetByStrongIdAsync(Guid registerOutId, CancellationToken cancellationToken = default)
        {
            return await _context.RegisterOutStocks
                .Include(x => x.Stock)
                .Where(x => x.RegisterOutId == registerOutId)
                .AsNoTracking()
                .ToListAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegisterOutStock>> GetByWeakIdAsync(Guid stockId, CancellationToken cancellationToken = default)
        {
            return await _context.RegisterOutStocks
                .Include(x => x.RegisterOut)
                .Where(x => x.StockId == stockId)
                .AsNoTracking()
                .ToListAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegisterOutStock>> UpdateAsync(IEnumerable<RegisterOutStock> entitiesMtM)
        {
            foreach (var entityMtM in entitiesMtM)
            {
                var entity = _context.Set<RegisterOutStock>().Find(entityMtM.RegisterOutId, entityMtM.StockId);
                if (entity == default) return null;
                var attachedEntry = _context.Entry(entity);
                attachedEntry.CurrentValues.SetValues(entityMtM);
            }
            await _context.SaveChangesAsync();
            return entitiesMtM;
        }
    }
}