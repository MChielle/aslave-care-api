using SlaveCare.Domain.Interfaces.Services.Core;
using System;
using System.Threading.Tasks;
using SlaveCare.Domain.Responses.Interfaces;
using System.Threading;
using SlaveCare.Domain.Models.v1.RegisterIn;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IRegisterInService : IServiceBase<RegisterInAddModel, RegisterInUpdateModel, RegisterInPatchModel, RegisterInGetModel, RegisterInModel, Guid>
    {
        Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation);
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}
