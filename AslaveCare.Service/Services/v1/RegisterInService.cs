using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterIn;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;

namespace AslaveCare.Service.Services.v1
{
    public class RegisterInService : ServiceBase<RegisterInAddModel, RegisterInUpdateModel, RegisterInPatchModel, RegisterInGetModel, RegisterInModel, RegisterIn, Guid>, IRegisterInService
    {
        private readonly IStockService _stockService;
        private readonly IRegisterInRepository _repository;

        public RegisterInService(IRegisterInRepository repository, IServiceContext serviceContext, IStockService stockService)
            : base(repository, serviceContext)
        {
            _stockService = stockService;
            _repository = repository;
        }

        public override async Task<IResponseBase> AddAsync(RegisterInAddModel model)
        {
            var response = await base.AddAsync(model);
            if (model.Apply)
                await _stockService.UpdateStockQuantity(model.RegisterInStocks, model.Apply);

            return response;
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IList<RegisterInGetModel>>(Mapper.Map<IList<RegisterInGetModel>>(entities));
        }

        public async Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation)
        {
            var entities = await _repository.GetByIdToUpdateAsync(id, cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<RegisterInGetModel>(Mapper.Map<RegisterInGetModel>(entities));
        }

        public async Task<IResponseBase> GetDonationsByMonth(CancellationToken cancellation)
        {
            var entities = await _repository.GetDonationsByMonth(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<Dictionary<string, decimal>>(entities);
        }
    }
}
