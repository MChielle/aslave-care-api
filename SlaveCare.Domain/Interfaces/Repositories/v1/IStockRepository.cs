using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using SlaveCare.Domain.Models.v1.Supplier;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Threading;
using SlaveCare.Domain.Models.v1.Stock;

namespace SlaveCare.Domain.Interfaces.Repositories
{
    public interface IStockRepository : IRepositoryBase<Stock, Guid>
    {
        Task<List<Stock>> GetByParameters(StockGetByParametersModel parameters, CancellationToken cancellation = default);
        Task<List<Stock>> GetToListAsync(CancellationToken cancellation = default);
    }
}