using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Models.v1.Stock;
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
    public class StockRepository : RepositoryBase<BaseContext, Stock, Guid>, IStockRepository
    {
        public StockRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        //TODO: verificar solução para injeção de parâmetros de forma genérica, pesquisar possibilidade de fazer include dinâmico.
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

        public async Task<List<Stock>> GetLowerStocks(int number, CancellationToken cancellation)
        {
            return await _context.Stocks
                .AsNoTracking()
                .Where(x => x.Quantity < x.QuantityLowWarning)
                .Where(x => x.Disable != true)
                .Where(x => x.DeletionDate.Equals(null))
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

        public async Task<int> GetTotalStocksQuantityWarning(CancellationToken cancellation)
        {
            return await _context.Stocks
                .AsNoTracking()
                .Where(x => x.Quantity < x.QuantityLowWarning)
                .Where(x => x.Disable != true 
                                && x.DeletionDate.Equals(null))
                .CountAsync(cancellation);
        }

        public async Task<List<Stock>> GetRestockReportAsync(CancellationToken cancellation)
        {
            var stocksWithSupplier = await _context.Stocks
                .AsNoTracking()
                .Include(x => x.RegisterInStocks)
                    .ThenInclude(x => x.RegisterIn)
                        .ThenInclude(x => x.Supplier)
                .Where(x => x.Quantity < x.QuantityLowWarning
                                && x.Disable != true
                                && x.DeletionDate.Equals(null)
                                && x.RegisterInStocks.OrderBy(y => y.Price).Take(1).Any())
                .ToListAsync(cancellation);

            var stocksWithOutSupplier = await _context.Stocks
                .AsNoTracking()
                .Include(x => x.RegisterInStocks)
                    .ThenInclude(x => x.RegisterIn)
                        .ThenInclude(x => x.Supplier)
                .Where(x => x.Quantity < x.QuantityLowWarning
                                && x.Disable != true
                                && x.DeletionDate.Equals(null)
                                && !x.RegisterInStocks.Any())
                .ToListAsync(cancellation);

            return stocksWithSupplier.Concat(stocksWithOutSupplier).ToList();
        }
    }
}