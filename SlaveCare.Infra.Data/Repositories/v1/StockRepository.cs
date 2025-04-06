using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Models.v1.Stock;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories
{
    public class StockRepository : RepositoryBase<BaseContext, Stock, Guid>, IStockRepository
    {
        public StockRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public async Task<List<Stock>> GetByParameters(StockGetByParametersModel parameters, CancellationToken cancellation = default)
        {
            return await _context.Stocks
                            .AsNoTracking()
                            .Where(x => !parameters.Id.HasValue ? true : x.Id == parameters.Id)
                            .Where(x => string.IsNullOrEmpty(parameters.Name) ? true : x.Name == parameters.Name)
                            .Where(x => string.IsNullOrEmpty(parameters.Description) ? true : x.Description == parameters.Description)
                            .Where(x => !parameters.Disable.HasValue ? true : x.Disable == parameters.Disable)
                            .Where(x => !parameters.Quantity.HasValue ? true : x.Quantity == parameters.Quantity)
                            .ToListAsync(cancellation);
        }

        public override async Task<Stock> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await GetByIdAsync(id, cancellationToken);
        }

        public async Task<List<Stock>> GetToListAsync(CancellationToken cancellation = default)
        {
            return await _context.Stocks
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null))
                .ToListAsync(cancellation);
        }
    }
}