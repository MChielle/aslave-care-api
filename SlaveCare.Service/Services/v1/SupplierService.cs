using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;
using System.Threading.Tasks;
using System.Threading;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System.Collections.Generic;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Interfaces.Services.v1;

namespace SlaveCare.Service.Services.v1
{
    public class SupplierService : ServiceBase<SupplierAddModel, SupplierUpdateModel, SupplierPatchModel, SupplierGetModel, SupplierModel, Supplier, Guid>, ISupplierService
    {
        private readonly ISupplierRepository _repository;

        public SupplierService(ISupplierRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
            _repository = repository;
        }

        public async Task<IResponseBase> GetByEmailAsync(string email, CancellationToken cancellation = default)
        {
            var entity = await _repository.GetByEmailAsync(email, cancellation);
            if (entity == null) return new NoContentResponse();
            return new OkResponse<SupplierGetModel>(Mapper.Map<SupplierGetModel>(entity));
        }

        public async Task<IResponseBase> GetByParameters(SupplierGetByParametersModel parameters, CancellationToken cancellation = default)
        {
            var entity = await _repository.GetByParameters(parameters, cancellation);
            if (entity == null) return new NoContentResponse();
            return new OkResponse<IList<SupplierGetModel>>(Mapper.Map<IList<SupplierGetModel>>(entity));
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IList<SupplierGetModel>>(Mapper.Map<IList<SupplierGetModel>>(entities));
        }
    }
}
