using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

public interface IRegisterInStockService : IMtMServiceBase<RegisterInStockGetRegisterInModel, RegisterInStockGetStockModel, RegisterInStockPatchModel, RegisterInStockModel, Guid, Guid>
{
    Task<IResponseBase> AddAsync(Guid registerInId, RegisterInStockPatchModel model);

    Task<IResponseBase> GetDonationsReportAsync(DateTime initialDate, DateTime finalDate, CancellationToken cancellation);
}