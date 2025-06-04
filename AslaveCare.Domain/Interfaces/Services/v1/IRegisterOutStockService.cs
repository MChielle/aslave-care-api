using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.RegisterOutStock;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IRegisterOutStockService : IMtMServiceBase<RegisterOutStockGetRegisterOutModel, RegisterOutStockGetStockModel, RegisterOutStockPatchModel, RegisterOutStockModel, Guid, Guid>
    {
        Task<IResponseBase> AddAsync(Guid registerOutId, RegisterOutStockPatchModel model);
    }
}