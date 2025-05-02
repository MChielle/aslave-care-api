using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Threading;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using AslaveCare.Domain.Models.v1.Stock;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IStockRepository : IRepositoryBase<Stock, Guid>
    {
        Task<List<Stock>> GetByParameters(StockGetByParametersModel parameters, CancellationToken cancellation = default);

        Task<List<Stock>> GetLowerStocks(int number, CancellationToken cancellation);

        Task<List<Stock>> GetToListAsync(CancellationToken cancellation = default);
    }
}
