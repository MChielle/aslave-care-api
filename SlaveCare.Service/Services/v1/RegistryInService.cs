using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.RegistryIn;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Service.Services
{
    public class RegistryInService : ServiceBase<RegistryInAddModel, RegistryInUpdateModel, RegistryInPatchModel, RegistryInGetModel, RegistryInModel, RegistryIn, Guid>, IRegistryInService
    {
        private readonly IStockService _stockService;
        private readonly IRegistryInRepository _repository;

        public RegistryInService(IRegistryInRepository repository, IServiceContext serviceContext, IStockService stockService)
            : base(repository, serviceContext)
        {
            _stockService = stockService;
            _repository = repository;
        }

        public override async Task<IResponseBase> AddAsync(RegistryInAddModel model)
        {
            var response = await base.AddAsync(model);
            if (model.Apply)
                await _stockService.UpdateStockQuantity(model.RegistryInStocks, model.Apply);

            return response;
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IList<RegistryInGetModel>>(Mapper.Map<IList<RegistryInGetModel>>(entities));
        }
    }
}