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

        public override async Task<RegisterIn> AddAsync(RegisterIn entity)
        {
            var lastNumber = await GetLastNumber();
            entity.Number = lastNumber + 1;
            return await base.AddAsync(entity);
        }

        public override async Task<RegisterIn> UpdateAsync(RegisterIn entity)
        {
            var entityfromdb = _context.RegistersIn.Find(entity.Id);
            if (entityfromdb == default) return null;

            entity.LastChangeDate = DateTime.UtcNow;
            entity.CreationDate = entityfromdb.CreationDate;
            entity.Number = entityfromdb.Number;

            var attachedEntry = _context.Entry(entityfromdb);

            attachedEntry.CurrentValues.SetValues(entity);

            await _context.SaveChangesAsync();

            return entity;
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

        public async Task<int> GetLastNumber()
        {
            return await _context.RegistersIn
                .AsNoTracking()
                .OrderByDescending(x => x.Number)
                .Select(x => x.Number)
                .FirstOrDefaultAsync();
        }
    }
}