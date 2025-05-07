using System;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.Supplier;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface ISupplierService : IServiceBase<SupplierAddModel, SupplierUpdateModel, SupplierPatchModel, SupplierGetModel, SupplierModel, Guid>
    {
        Task<IResponseBase> GetByEmailAsync(string email, CancellationToken cancellation = default);
        Task<IResponseBase> GetByParameters(SupplierGetByParametersModel parameters, CancellationToken cancellationToken = default);
        Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default);
    }
}
