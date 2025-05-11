using System;
using System.Threading.Tasks;
using System.Threading;
using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.RegisterOut;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IRegisterOutService : IServiceBase<RegisterOutAddModel, RegisterOutUpdateModel, RegisterOutPatchModel, RegisterOutGetModel, RegisterOutModel, Guid>
    {
        Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation);
        Task<IResponseBase> GetConsumptionsPerMonth(CancellationToken cancellation);
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}
