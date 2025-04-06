using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services
{
    public interface ISupplierService : IServiceBase<SupplierAddModel, SupplierUpdateModel, SupplierPatchModel, SupplierGetModel, SupplierModel, Guid>
    {
        Task<IResponseBase> GetByEmailAsync(string email, CancellationToken cancellation = default);
        Task<IResponseBase> GetByParameters(SupplierGetByParametersModel parameters, CancellationToken cancellationToken = default);
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}