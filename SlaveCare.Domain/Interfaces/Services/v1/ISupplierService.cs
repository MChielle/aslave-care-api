using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.Supplier;
using System;

namespace SlaveCare.Domain.Interfaces.Services
{
    public interface ISupplierService : IServiceBase<SupplierAddModel, SupplierUpdateModel, SupplierPatchModel, SupplierGetModel, SupplierModel, Guid>
    {
    }
}