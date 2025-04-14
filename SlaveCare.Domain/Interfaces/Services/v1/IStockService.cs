using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.Stock;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;
using System.Threading;
using System.Collections.Generic;
using SlaveCare.Domain.Models.v1.RegisterInStock;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IStockService : IServiceBase<StockAddModel, StockUpdateModel, StockPatchModel, StockGetModel, StockModel, Guid>
    {
        Task<IResponseBase> GetByParameters(StockGetByParametersModel parameters, CancellationToken cancellationToken = default);
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
        Task UpdateStockQuantity(List<RegisterInStockPatchModel> registerInStocks, bool apply);
    }
}
