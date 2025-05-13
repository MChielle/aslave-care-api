using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.RegisterIn;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IRegisterInService : IServiceBase<RegisterInAddModel, RegisterInUpdateModel, RegisterInPatchModel, RegisterInGetModel, RegisterInModel, Guid>
    {
        Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation);

        Task<IResponseBase> GetDonationsPerMonth(CancellationToken cancellation);

        Task<IResponseBase> GetShoppingPerMonth(CancellationToken cancellation);

        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}