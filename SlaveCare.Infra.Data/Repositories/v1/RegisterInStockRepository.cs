using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using SlaveCare.Domain.Entities;
using System.Collections.Generic;
using SlaveCare.Infra.Data.Context;
using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Base;

namespace SlaveCare.Infra.Data.Repositories.v1
{
    public class RegisterInStockRepository : MtMRepositoryBase<BaseContext, RegisterInStock, Guid, Guid>, IRegisterInStockRepository
    {
        public RegisterInStockRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public async override Task<RegisterInStock> GetByIdsAsync(Guid registerInId, Guid StockId, CancellationToken cancellationToken = default)
        {
            return await _context.RegisterInStocks
                .Where(x => x.RegisterInId.Equals(registerInId) && x.StockId.Equals(StockId))
                .AsNoTracking()
                .FirstOrDefaultAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegisterInStock>> GetByStrongIdAsync(Guid registerInId, CancellationToken cancellationToken = default)
        {
            return await _context.RegisterInStocks
                .Include(x => x.Stock)
                .Where(x => x.RegisterInId == registerInId)
                .AsNoTracking()
                .ToListAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegisterInStock>> GetByWeakIdAsync(Guid stockId, CancellationToken cancellationToken = default)
        {
            return await _context.RegisterInStocks
                .Include(x => x.RegisterIn)
                .Where(x => x.StockId == stockId)
                .AsNoTracking()
                .ToListAsync(cancellationToken);
        }

        public override async Task<IEnumerable<RegisterInStock>> UpdateAsync(IEnumerable<RegisterInStock> entitiesMtM)
        {
            foreach (var entityMtM in entitiesMtM)
            {
                var entity = _context.Set<RegisterInStock>().Find(entityMtM.RegisterInId, entityMtM.StockId);
                if (entity == default) return null;
                var attachedEntry = _context.Entry(entity);
                attachedEntry.CurrentValues.SetValues(entityMtM);
            }
            await _context.SaveChangesAsync();
            return entitiesMtM;
        }
    }
}