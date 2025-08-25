using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using AslaveCare.Domain.Models.v1.RegisterOutStock;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1
{
    public class StockService : ServiceBase<StockAddModel, StockUpdateModel, StockPatchModel, StockGetModel, StockModel, Stock, Guid>, IStockService
    {
        private readonly IStockRepository _repository;

        public StockService(IStockRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
            _repository = repository;
        }

        public async Task<IResponseBase> GetByParameters(StockGetByParametersModel parameters, CancellationToken cancellation = default)
        {
            var entities = await _repository.GetByParameters(parameters, cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<StockGetModel>>(Mapper.Map<IEnumerable<StockGetModel>>(entities));
        }

        public async Task<IResponseBase> GetLowerStocks(int number, CancellationToken cancellation = default)
        {
            var entities = await _repository.GetLowerStocks(number, cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<StockGetModel>>(Mapper.Map<IEnumerable<StockGetModel>>(entities));
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<StockGetModel>>(Mapper.Map<IEnumerable<StockGetModel>>(entities));
        }

        public async Task<IResponseBase> GetTotalStocksQuantityWarning(CancellationToken cancellationToken)
        {
            var totalStocksQuantityWarning = await _repository.GetTotalStocksQuantityWarning(cancellationToken);
            return new OkResponse<StocksQuantityWarningModel>(new StocksQuantityWarningModel(totalStocksQuantityWarning));
        }

        public async Task<IResponseBase> IncreaseStockQuantity(List<RegisterInStockPatchModel> registerInStocks)
        {
            foreach (var stockToUpdate in registerInStocks)
            {
                var stock = await _repository.GetByIdAsync(stockToUpdate.StockId);

                stock.Quantity += stockToUpdate.Quantity;

                await _repository.UpdateAsync(stock);
            }

            return new OkResponse<bool>(true);
        }

        public async Task<IResponseBase> DecreaseStockQuantity(List<RegisterOutStockPatchModel> registerOutStocks)
        {
            foreach (var stockToUpdate in registerOutStocks)
            {
                var stock = await _repository.GetByIdAsync(stockToUpdate.StockId);

                stock.Quantity -= stockToUpdate.Quantity;

                await _repository.UpdateAsync(stock);
            }

            return new OkResponse<bool>(true);
        }

        public async Task<IResponseBase> GetRestockReportAsync(CancellationToken cancellation)
        {
            var entities = await _repository.GetRestockReportAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<StockGetRestockReportModel>>(Mapper.Map<IEnumerable<StockGetRestockReportModel>>(entities));
        }

        public async Task<IResponseBase> GetStockReportAsync(CancellationToken cancellation)
        {
            var entities = await _repository.GetStockReportAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<StockGetRestockReportModel>>(Mapper.Map<IEnumerable<StockGetRestockReportModel>>(entities));
        }
    }
}