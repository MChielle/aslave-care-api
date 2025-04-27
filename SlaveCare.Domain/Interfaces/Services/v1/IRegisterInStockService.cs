using SlaveCare.Domain.Interfaces.Services.Core;
using System;
using System.Threading.Tasks;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Models.v1.RegisterInStock;

public interface IRegisterInStockService : IMtMServiceBase<RegisterInStockGetRegisterInModel, RegisterInStockGetStockModel, RegisterInStockPatchModel, RegisterInStockModel, Guid, Guid>
{
    Task<IResponseBase> AddAsync(Guid registerInId, RegisterInStockPatchModel model);
}