using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using AslaveCare.Domain.Models.v1.RegisterOutStock;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IStockService : IServiceBase<StockAddModel, StockUpdateModel, StockPatchModel, StockGetModel, StockModel, Guid>
    {
        Task<IResponseBase> GetByParameters(StockGetByParametersModel parameters, CancellationToken cancellation = default);

        Task<IResponseBase> GetLowerStocks(int number, CancellationToken cancellation = default);

        Task<IResponseBase> GetRestockReportAsync(CancellationToken cancellation);

        Task<IResponseBase> GetStockReportAsync(CancellationToken cancellation);

        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);

        Task<IResponseBase> GetTotalStocksQuantityWarning(CancellationToken cancellationToken);

        Task<IResponseBase> DecreaseStockQuantity(List<RegisterOutStockPatchModel> registerOutStocks);

        Task<IResponseBase> IncreaseStockQuantity(List<RegisterInStockPatchModel> registerInStocks);

        Task<IResponseBase> RevertStockQuantity(List<RegisterInStockPatchModel> registerInStocks);
        Task<IResponseBase> RevertStockQuantity(List<RegisterOutStockPatchModel> registerOutStocks);
    }
}