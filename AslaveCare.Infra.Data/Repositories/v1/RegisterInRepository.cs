using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;

namespace AslaveCare.Infra.Data.Repositories.v1
{
    public class RegisterInRepository : RepositoryBase<BaseContext, RegisterIn, Guid>, IRegisterInRepository
    {
        public RegisterInRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override async Task<RegisterIn> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await GetByIdAsync(id, cancellationToken);
        }

        public async Task<List<RegisterIn>> GetToListAsync(CancellationToken cancellation = default)
        {
            return await _context.RegistersIn
                .AsNoTracking()
                .Include(x => x.Supplier)
                .Where(x => x.DeletionDate.Equals(null))
                .ToListAsync(cancellation);
        }

        public async override Task<RegisterIn> AddAsync(RegisterIn entity)
        {
            var lastNumber = await _context.RegistersIn.OrderByDescending(x => x.Number).FirstOrDefaultAsync();
            entity.Number = lastNumber == null ? 0: lastNumber.Number++;
            if(entity.Apply) entity.ApplyDate = DateTime.UtcNow;
            return await base.AddAsync(entity);
        }

        public async override Task<RegisterIn> UpdateAsync(RegisterIn entity)
        {
            if (entity.Apply) entity.ApplyDate = DateTime.UtcNow;
            return await base.UpdateAsync(entity);
        }

        public async Task<RegisterIn> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation)
        {
            return await _context.RegistersIn
                .Include(x => x.Supplier)
                .Include(x => x.RegisterInStocks)
                    .ThenInclude(x => x.Stock)
                .AsNoTracking()
                .FirstOrDefaultAsync(x => x.Id.Equals(id));
        }

        public async Task<Dictionary<string, decimal>> GetDonationsByMonth(CancellationToken cancellation)
        {
            return await _context.RegistersIn
                .Include(x => x.RegisterInStocks)
                    .ThenInclude(x => x.Stock)
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null) && x.Donation)
                .GroupBy(x => new { x.CreationDate.Year, x.CreationDate.Month })
                .OrderByDescending(x => x.Key.Year)
                .OrderByDescending(x => x.Key.Month)
                .Take(12)
                .Select(x => new
                {
                    Month = $"{x.Key.Month}/{x.Key.Year}",
                    Total = x.Sum(y => y.RegisterInStocks.Sum(w => w.Price))
                })
                .ToDictionaryAsync(x => x.Month, x => x.Total, cancellation);
        }
    }
}
