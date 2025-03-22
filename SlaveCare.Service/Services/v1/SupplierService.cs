using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;

namespace SlaveCare.Service.Services
{
    public class SupplierService : ServiceBase<SupplierAddModel, SupplierUpdateModel, SupplierPatchModel, SupplierGetModel, SupplierModel, Supplier, Guid>, ISupplierService
    {
        public SupplierService(ISupplierRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
        }
    }
}