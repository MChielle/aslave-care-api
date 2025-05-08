using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;

namespace AslaveCare.Infra.Data.Repositories.v1
{
    public class StockRepository : RepositoryBase<BaseContext, Stock, Guid>, IStockRepository
    {
        public StockRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        //TODO: verificar solução para injeção de parâmetros de forma genérica, pesquisar possibilidade de fazer include dinâmico.
        public async Task<List<Stock>> GetByParameters(StockGetByParametersModel parameters,  CancellationToken cancellation = default)
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

        public async Task<List<Stock>> GetLowerStocks(int number, CancellationToken cancellation)
        {
            return await _context.Stocks
                .AsNoTracking()
                .Where(x => x.Quantity <= x.QuantityLowWarning)
                .OrderBy(x => x.Quantity)
                .Take(number)
                .ToListAsync(cancellation);
        }

        public async Task<List<Stock>> GetToListAsync(CancellationToken cancellation = default)
        {
            return await _context.Stocks
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null))
                .ToListAsync(cancellation);
        }

        public async Task<int> GetTotalStocksQuantityWarning(CancellationToken cancellationToken)
        {
            return await _context.Stocks
                .AsNoTracking()
                .Where(x => x.Quantity <= x.QuantityLowWarning)
                .CountAsync(cancellationToken);
        }
    }
}
