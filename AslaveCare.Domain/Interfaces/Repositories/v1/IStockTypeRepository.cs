using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Repositories
{
    public interface IStockTypeRepository : IRepositoryBase<StockType, string>
    {
        Task<List<StockType>> GetToListAsync(CancellationToken cancellation = default);
    }
}