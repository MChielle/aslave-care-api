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
    public class RegisterOutRepository : RepositoryBase<BaseContext, RegisterOut, Guid>, IRegisterOutRepository
    {
        public RegisterOutRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }
        public async override Task<RegisterOut> AddAsync(RegisterOut entity)
        {
            var lastNumber = await _context.RegistersOut.OrderByDescending(x => x.Number).FirstOrDefaultAsync();
            entity.Number = lastNumber == null ? 0 : lastNumber.Number++;
            if (entity.Apply) entity.ApplyDate = DateTime.UtcNow;
            return await base.AddAsync(entity);
        }

        public override async Task<RegisterOut> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await GetByIdAsync(id, cancellationToken);
        }

        public async Task<List<RegisterOut>> GetToListAsync(CancellationToken cancellation)
        {
            return await _context.RegistersOut
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null))
                .ToListAsync(cancellation);
        }

        public async Task<Dictionary<DateTime, decimal>> GetConsumptionsPerMonth(CancellationToken cancellation)
        {
            return await _context.RegistersOut
                .Include(x => x.RegisterOutStocks)
                    .ThenInclude(x => x.Stock)
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null) && x.Apply)
                .OrderByDescending(x => x.CreationDate)
                .GroupBy(x => new { x.CreationDate.Year, x.CreationDate.Month })
                .Take(12)
                .Select(x => new
                {
                    MonthYear = new DateTime(x.Key.Year, x.Key.Month, 1),
                    Total = x.Sum(y => y.RegisterOutStocks.Sum(w => w.Quantity))
                })
                .ToDictionaryAsync(x => x.MonthYear, x => x.Total, cancellation);
        }
    }
}
