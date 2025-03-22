using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.Supplier;
using System;

namespace SlaveCare.Api.Controllers.v1
{
    public class SupplierController : EntityController<SupplierAddModel, SupplierUpdateModel, SupplierPatchModel, SupplierGetModel, SupplierModel, Guid>
    {
        public SupplierController(ISupplierService service)
            : base(service)
        {
        }
    }
}