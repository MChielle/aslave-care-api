﻿using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterIn;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1
{
    public class RegisterInService : ServiceBase<RegisterInAddModel, RegisterInUpdateModel, RegisterInPatchModel, RegisterInGetModel, RegisterInModel, RegisterIn, Guid>, IRegisterInService
    {
        private readonly IStockService _stockService;
        private readonly IRegisterInRepository _repository;
        private readonly IRegisterInStockService _registerInStockService;

        public RegisterInService(IRegisterInRepository repository, IServiceContext serviceContext, IStockService stockService, IRegisterInStockService registerInStockService)
            : base(repository, serviceContext)
        {
            _stockService = stockService;
            _repository = repository;
            _registerInStockService = registerInStockService;
        }

        public override async Task<IResponseBase> AddAsync(RegisterInAddModel model)
        {
            var response = await base.AddAsync(model);
            if (model.Apply)
                await _stockService.UpdateStockQuantity(model.RegisterInStocks, model.Apply);

            return response;
        }

        public override async Task<IResponseBase> UpdateAsync(RegisterInUpdateModel model)
        {
            var response = await base.UpdateAsync(model);

            await _registerInStockService.AddOrDeleteAsync(model.Id, model.RegisterInStocks);

            await _stockService.UpdateStockQuantity(model.RegisterInStocks, model.Apply);

            return response;
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterInGetModel>>(Mapper.Map<IEnumerable<RegisterInGetModel>>(entities));
        }

        public async Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation)
        {
            var entities = await _repository.GetByIdToUpdateAsync(id, cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<RegisterInGetModel>(Mapper.Map<RegisterInGetModel>(entities));
        }

        public async Task<IResponseBase> GetDonationsPerMonth(CancellationToken cancellation)
        {
            var entities = await _repository.GetDonationsPerMonth(cancellation);

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

        public async Task<IResponseBase> GetShoppingPerMonth(CancellationToken cancellation)
        {
            var entities = await _repository.GetShoppingPerMonth(cancellation);

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