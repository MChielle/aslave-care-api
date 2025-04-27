using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.RegisterOut;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;
using System.Threading;

namespace SlaveCare.Domain.Interfaces.Services
{
    public interface IRegisterOutService : IServiceBase<RegisterOutAddModel, RegisterOutUpdateModel, RegisterOutPatchModel, RegisterOutGetModel, RegisterOutModel, Guid>
    {
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}