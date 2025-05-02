using System;
using System.Threading.Tasks;
using System.Threading;
using System.Collections.Generic;
using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using AslaveCare.Domain.Models.v1.RegisterOutStock;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IStockService : IServiceBase<StockAddModel, StockUpdateModel, StockPatchModel, StockGetModel, StockModel, Guid>
    {
        Task<IResponseBase> GetByParameters(StockGetByParametersModel parameters, CancellationToken cancellation = default);
        Task<IResponseBase> GetLowerStocks(int number, CancellationToken cancellation = default);
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
        Task UpdateStockQuantity(List<RegisterInStockPatchModel> registerInStocks, bool apply);
        Task UpdateStockQuantity(List<RegisterOutStockPatchModel> registerInStocks, bool apply);
    }
}
