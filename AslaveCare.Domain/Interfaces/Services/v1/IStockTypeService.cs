using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.StockType;
using AslaveCare.Domain.Responses.Interfaces;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IStockTypeService : IServiceBase<StockTypeAddModel, StockTypeUpdateModel, StockTypePatchModel, StockTypeGetModel, StockTypeModel, string>
    {
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}