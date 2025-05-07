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
            entity.Number = lastNumber == null ? 1 : lastNumber.Number++;
            if(entity.Apply) entity.ApplyDate = DateTime.UtcNow;
            return await base.AddAsync(entity);
        }

        public async override Task<RegisterIn> UpdateAsync(RegisterIn entity)
        {
            //TODO: ver se não esta zerando o número sequêncial do registro.
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

        public async Task<Dictionary<DateTime, decimal>> GetDonationsPerMonth(CancellationToken cancellation)
        {
            return await _context.RegistersIn
                .Include(x => x.RegisterInStocks)
                    .ThenInclude(x => x.Stock)
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null) && x.Donation && x.Apply)
                .OrderByDescending(x => x.CreationDate)
                .GroupBy(x => new { x.CreationDate.Year, x.CreationDate.Month })
                .Take(12)
                .Select(x => new
                {
                    MonthYear = new DateTime(x.Key.Year, x.Key.Month, 1),
                    Total = x.Sum(y => y.RegisterInStocks.Sum(w => w.Quantity))
                })
                .ToDictionaryAsync(x => x.MonthYear, x => x.Total, cancellation);
        }

        public async Task<Dictionary<DateTime, decimal>> GetShoppingPerMonth(CancellationToken cancellation)
        {
            return await _context.RegistersIn
                .Include(x => x.RegisterInStocks)
                    .ThenInclude(x => x.Stock)
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null) && !x.Donation && x.Apply)
                .OrderByDescending(x => x.CreationDate)
                .GroupBy(x => new { x.CreationDate.Year, x.CreationDate.Month })
                .Take(12)
                .Select(x => new
                {
                    MonthYear = new DateTime(x.Key.Year, x.Key.Month, 1),
                    Total = x.Sum(y => y.RegisterInStocks.Sum(w => w.Quantity))
                })
                .ToDictionaryAsync(x => x.MonthYear, x => x.Total, cancellation);
        }

        public async Task<RegisterIn> GetLastNumber()
        {
            return await _context.RegistersIn
                .AsNoTracking()
                .OrderByDescending(x => x.Number)
                .FirstOrDefaultAsync();
        }
    }
}
