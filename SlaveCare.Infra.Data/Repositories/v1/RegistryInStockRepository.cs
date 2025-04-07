using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Repositories.Core;
using System;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using System.Threading.Tasks;
using System.Threading;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace SlaveCare.Infra.Data.Repositories.v1
{
    public class RegistryInStockRepository : MtMRepositoryBase<BaseContext, RegistryInStock, Guid, Guid>, IRegistryInStockRepository
    {
        public RegistryInStockRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public async override Task<RegistryInStock> GetByIdsAsync(Guid RegistryInId, Guid StockId, CancellationToken cancellationToken = default)
        {
            return await _context.RegistryInStocks
                .Where(x => x.RegistryInId.Equals(RegistryInId) && x.StockId.Equals(StockId))
                .AsNoTracking()
                .FirstOrDefaultAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegistryInStock>> GetByStrongIdAsync(Guid registryInId, CancellationToken cancellationToken = default)
        {
            return await _context.RegistryInStocks
                .Include(x => x.Stock)
                .Where(x => x.RegistryInId == registryInId)
                .AsNoTracking()
                .ToListAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegistryInStock>> GetByWeakIdAsync(Guid stockId, CancellationToken cancellationToken = default)
        {
            return await _context.RegistryInStocks
                .Include(x => x.RegistryIn)
                .Where(x => x.StockId == stockId)
                .AsNoTracking()
                .ToListAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegistryInStock>> UpdateAsync(IEnumerable<RegistryInStock> entitiesMtM)
        {
            foreach (var entityMtM in entitiesMtM)
            {
                var entity = _context.Set<RegistryInStock>().Find(entityMtM.RegistryInId, entityMtM.StockId);
                if (entity == default) return null;
                var attachedEntry = _context.Entry(entity);
                attachedEntry.CurrentValues.SetValues(entityMtM);
            }
            await _context.SaveChangesAsync();
            return entitiesMtM;
        }
    }
}