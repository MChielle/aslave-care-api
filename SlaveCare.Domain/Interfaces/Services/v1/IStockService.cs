using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.Stock;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;
using System.Threading;

namespace SlaveCare.Domain.Interfaces.Services
{
    public interface IStockService : IServiceBase<StockAddModel, StockUpdateModel, StockPatchModel, StockGetModel, StockModel, Guid>
    {
        Task<IResponseBase> GetByParameters(StockGetByParametersModel parameters, CancellationToken cancellationToken = default);
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}