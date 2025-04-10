using SlaveCare.Domain.Interfaces.Services.Core;
using System;
using SlaveCare.Domain.Models.v1.RegistryIn;
using System.Threading.Tasks;
using SlaveCare.Domain.Responses.Interfaces;
using System.Threading;

namespace SlaveCare.Domain.Interfaces.Services
{
    public interface IRegistryInService : IServiceBase<RegistryInAddModel, RegistryInUpdateModel, RegistryInPatchModel, RegistryInGetModel, RegistryInModel, Guid>
    {
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}