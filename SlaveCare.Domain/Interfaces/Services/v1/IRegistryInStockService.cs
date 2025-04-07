using SlaveCare.Domain.Interfaces.Services.Core;
using System;
using SlaveCare.Domain.Models.v1.RegistryInStock;
using System.Threading.Tasks;
using SlaveCare.Domain.Responses.Interfaces;

public interface IRegistryInStockService : IMtMServiceBase<RegistryInStockGetRegistryInModel, RegistryInStockGetStockModel, RegistryInStockPatchModel, RegistryInStockModel, Guid, Guid>
{
    Task<IResponseBase> AddAsync(Guid RegistryInId, RegistryInStockPatchModel model);
}