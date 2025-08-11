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
            return await _context.Stocks
                .AsNoTracking()
                .Include(x => x.RegisterInStocks)
                    .ThenInclude(x => x.RegisterIn)
                        .ThenInclude(x => x.Supplier)
                .Where(x => x.Quantity < x.QuantityLowWarning
                                && x.Disable != true
                                && x.DeletionDate.Equals(null)
                                && (x.RegisterInStocks.OrderBy(y => y.Price).Take(1).Any()
                                    || !x.RegisterInStocks.Any()))
                .ToListAsync(cancellation);
        }

        public async Task<List<Stock>> GetStockReportAsync(CancellationToken cancellation)
        {
            return await _context.Stocks
                .AsNoTracking()
                .Include(x => x.RegisterInStocks)
                .Where(x => x.Quantity >= 0)
                .Where(x => !x.Disable)
                .ToListAsync(cancellation);
        }

        public async Task<bool> RecountAsync(List<Stock> stocksToRecount, CancellationToken cancellationToken = default)
        {
            //var stocksToUpdate = await _context.Stocks.Where(x => stocksToRecount.Select(w => w.Id).Contains(x.Id)).ToListAsync();
            //foreach (var item in stocksToUpdate)
            //{
            //    stock.Quantity = item.Quantity;
            //    stock.LastChangeDate = DateTime.UtcNow;
            //}
            //await _context.Stocks.ExecuteUpdateAsync(stock);

            //var recountStocks = await _context.Stocks
            //    .Include(x => x.RegisterInStocks)
            //        .ThenInclude(x => x.RegisterIn)
            //    .Include(x => x.RegisterOutStocks)
            //        .ThenInclude(x => x.RegisterOut)
            //    .Where(x => stocksToRecount.Select(w => w.Id).Contains(x.Id) && x.DeletionDate.Equals(null))
            //    .Select(x => new
            //    {
            //        x.Id,
            //        // Quantidade recontada no depósito
            //        ActualQuantity = x.Quantity,
            //        // Calculo da quantidade registrada por movimentação
            //        CalculatedQuantity = x.RegisterInStocks.Where(x => x.RegisterIn.DeletionDate.Equals(null) && x.RegisterIn.Apply).Sum(x => x.Quantity)
            //        -
            //        x.RegisterOutStocks.Where(x => x.RegisterOut.DeletionDate.Equals(null) && x.RegisterOut.Apply).Sum(x => x.Quantity),
            //    })
            //    //Ignora os que estão com quantidade correta.
            //    .Select(x => new { x.Id, x.ActualQuantity, x.CalculatedQuantity, Diference = Math.Abs(x.CalculatedQuantity - x.ActualQuantity) })
            //    .Where(x => x.Diference != 0)
            //    .ToListAsync(cancellationToken);

            //if (recountStocks.Count == 0)
            //    return true;

            //var lastRegisterInNumber = 0;
            //RegisterIn registerIn = null;
            //if (recountStocks.Any(x => x.Diference < 0))
            //{
            //    lastRegisterInNumber = await _context.RegisterInStocks
            //        .Select(x => x.RegisterIn.Number)
            //        .DefaultIfEmpty(0)
            //        .MaxAsync(cancellationToken);

            //    registerIn = new RegisterIn
            //    {
            //        Apply = true,
            //        ApplyDate = new DateTime(2025, 5, 1),
            //        CreationDate = new DateTime(2025, 5, 1),
            //        DeletionDate = null,
            //        Description = "Recontagem de estoque",
            //        SupplierId = Guid.Parse("d7cc0743-6bd1-44d3-a087-5475097bcf7e"),
            //        Donation = false,
            //        Number = lastRegisterInNumber + 1,
            //    };

            //    foreach (var stock in recountStocks.Where(x => x.Diference < 0))
            //    {
            //        registerIn.RegisterInStocks.Add(new RegisterInStock
            //        {
            //            StockId = stock.Id,
            //            Quantity = stock.Diference * -1,
            //            Price = 0,
            //        });
            //    }
            //}

            //var lastRegisterOutNumber = 0;
            //RegisterOut registerOut = null;
            //if (recountStocks.Any(x => x.Diference > 0))
            //{
            //    lastRegisterOutNumber = await _context.RegisterInStocks
            //        .Select(x => x.RegisterIn.Number)
            //        .DefaultIfEmpty(0)
            //        .MaxAsync(cancellationToken);

            //    registerOut = new RegisterOut
            //    {
            //        Apply = true,
            //        ApplyDate = new DateTime(2025, 5, 1),
            //        CreationDate = new DateTime(2025, 5, 1),
            //        DeletionDate = null,
            //        Description = "Recontagem de estoque",
            //        Number = lastRegisterOutNumber + 1,
            //    };

            //    foreach (var stock in recountStocks.Where(x => x.Diference < 0))
            //    {
            //        registerOut.RegisterOutStocks.Add(new RegisterOutStock
            //        {
            //            StockId = stock.Id,
            //            Quantity = stock.Diference,
            //        });
            //    }
            //}

            //try
            //{
            //    await _context.Database.BeginTransactionAsync(cancellationToken);

            //    if (registerIn != null)
            //    {
            //        var result = await _context.AddAsync(registerIn);
            //    }

            //    if (registerOut != null)
            //    {
            //        var result = _context.RegistersOut.AddAsync(registerOut);
            //    }

            //    await _context.SaveChangesAsync(cancellationToken);
            //    await _context.Database.CommitTransactionAsync(cancellationToken);

                return true;
            //}
            //catch
            //{
            //    await _context.Database.RollbackTransactionAsync(cancellationToken);
            //    return false;
            //}
        }
    }
}