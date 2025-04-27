using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Models.v1.RegisterOut;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;

namespace SlaveCare.Service.Services
{
    public class RegisterOutService : ServiceBase<RegisterOutAddModel, RegisterOutUpdateModel, RegisterOutPatchModel, RegisterOutGetModel, RegisterOutModel, RegisterOut, Guid>, IRegisterOutService
    {
        private readonly IRegisterOutRepository _repository;
        private readonly IStockService _stockService;

        public RegisterOutService(IRegisterOutRepository repository, IServiceContext serviceContext, IStockService stockService)
            : base(repository, serviceContext)
        {
            _repository = repository;
            _stockService = stockService;
        }

        public override async Task<IResponseBase> AddAsync(RegisterOutAddModel model)
        {
            var response = await base.AddAsync(model);
            if (model.Apply)
                await _stockService.UpdateStockQuantity(model.RegisterOutStocks, model.Apply);

            return response;
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IList<RegisterOutGetModel>>(Mapper.Map<IList<RegisterOutGetModel>>(entities));
        }
    }
}