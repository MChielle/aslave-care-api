using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterIn;
using AslaveCare.Domain.Models.v1.RegisterOut;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;

namespace AslaveCare.Service.Services.v1
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

        public async override Task<IResponseBase> UpdateAsync(RegisterOutUpdateModel model)
        {
            var response = await base.UpdateAsync(model);
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

        public async Task<IResponseBase> GetConsumptionsPerMonth(CancellationToken cancellation)
        {
            var entities = await _repository.GetConsumptionsPerMonth(cancellation);

            var searchKey = new DateTime(DateTime.UtcNow.Year, DateTime.UtcNow.Month, 1);

            var result = new List<object>();

            for (var i = 1; i <= 12; i++)
            {
                var foundValue = entities.FirstOrDefault(x => x.Key == searchKey);

                if (foundValue.Key != default)
                    result.Add(new { Month = foundValue.Key.ToString("MMMM")[0].ToString().ToUpper(), Total = foundValue.Value });
                else
                    result.Add(new { Month = searchKey.ToString("MMMM")[0].ToString().ToUpper(), Total = 0 });

                searchKey = searchKey.AddMonths(-1);
            }

            if (result == null) return new NoContentResponse();
            return new OkResponse<object>(result);
        }
    }
}
