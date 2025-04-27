using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.RegisterInStock;
using SlaveCare.Domain.Models.v1.RegisterOutStocke;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IRegisterOutStockService : IMtMServiceBase<RegisterOutStockGetRegisterOutModel, RegisterOutStockGetStockModel, RegisterOutStockPatchModel, RegisterOutStockModel, Guid, Guid>
    {
        Task<IResponseBase> AddAsync(Guid registerOutId, RegisterOutStockPatchModel model);

    }
}