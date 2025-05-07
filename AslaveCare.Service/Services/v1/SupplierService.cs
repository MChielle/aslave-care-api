using System;
using System.Threading.Tasks;
using System.Threading;
using System.Collections.Generic;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Supplier;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;

namespace AslaveCare.Service.Services.v1
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
