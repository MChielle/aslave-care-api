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
    public class RegisterInStockRepository : MtMRepositoryBase<BaseContext, RegisterInStock, Guid, Guid>, IRegisterInStockRepository
    {
        public RegisterInStockRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override async Task<RegisterInStock> GetByIdsAsync(Guid registerInId, Guid StockId, CancellationToken cancellationToken = default)
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

        public async Task<List<RegisterInStock>> GetDonationsReportAsync(DateTime initialDate, DateTime finalDate, CancellationToken cancellation)
        {
            return await _context.RegisterInStocks
                    .Include(x => x.Stock)
                    .Include(x => x.RegisterIn)
                .Where(x => x.RegisterIn.Apply)
                .Where(x => x.RegisterIn.Donation)
                .Where(x => x.RegisterIn.DeletionDate == null)
                .Where(x => x.RegisterIn.ApplyDate >= initialDate && x.RegisterIn.ApplyDate <= finalDate)
                .GroupBy(x => x.StockId)
                .Select(x => new RegisterInStock
                {
                    Stock = x.FirstOrDefault().Stock,
                    Quantity = x.Sum(x => x.Quantity),
                    Price = x.Sum(x => x.Price * x.Quantity),
                })
                .AsNoTracking()
                .ToListAsync(cancellation);
        }
    }
}