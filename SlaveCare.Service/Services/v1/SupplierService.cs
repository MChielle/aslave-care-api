using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;
using System.Threading.Tasks;
using System.Threading;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System.Collections.Generic;

namespace SlaveCare.Service.Services
{
    public class SupplierService : ServiceBase<SupplierAddModel, SupplierUpdateModel, SupplierPatchModel, SupplierGetModel, SupplierModel, Supplier, Guid>, ISupplierService
    {
        private readonly ISupplierRepository _supplierRepository;

        public SupplierService(ISupplierRepository supplierRepository, IServiceContext serviceContext)
            : base(supplierRepository, serviceContext)
        {
            _supplierRepository = supplierRepository;
        }

        public async Task<IResponseBase> GetByEmailAsync(string email, CancellationToken cancellation = default)
        {
            var supplier = await _supplierRepository.GetByEmailAsync(email, cancellation);
            if (supplier == null) return new NoContentResponse();
            return new OkResponse<SupplierGetModel>(Mapper.Map<SupplierGetModel>(supplier));
        }

        public async Task<IResponseBase> GetByParameters(SupplierGetByParametersModel parameters, CancellationToken cancellation = default)
        {
            var supplier = await _supplierRepository.GetByParameters(parameters, cancellation);
            if (supplier == null) return new NoContentResponse();
            return new OkResponse<IList<SupplierGetModel>>(Mapper.Map<IList<SupplierGetModel>>(supplier));
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var suppliers = await _supplierRepository.GetToListAsync(cancellation);
            if (suppliers == null) return new NoContentResponse();
            return new OkResponse<IList<SupplierGetModel>>(Mapper.Map<IList<SupplierGetModel>>(suppliers));
        }
    }
}