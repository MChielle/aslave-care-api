using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Models.v1.Stock;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Models.v1.RegisterInStock;
using SlaveCare.Domain.Models.v1.RegisterOutStocke;

namespace SlaveCare.Service.Services.v1
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
            var entity = await _repository.GetByParameters(parameters, cancellation);
            if (entity == null) return new NoContentResponse();
            return new OkResponse<IList<StockGetModel>>(Mapper.Map<IList<StockGetModel>>(entity));
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IList<StockGetModel>>(Mapper.Map<IList<StockGetModel>>(entities));
        }

        public async Task UpdateStockQuantity(List<RegisterInStockPatchModel> registerInStocks, bool apply)
        {
            foreach (var stockToUpdate in registerInStocks)
            {
                var stock = await _repository.GetByIdAsync(stockToUpdate.StockId);

                if (apply)
                    stock.Quantity += stockToUpdate.Quantity;
                else
                    stock.Quantity -= stockToUpdate.Quantity;

                await _repository.UpdateAsync(stock);
            }
        }

        public async Task UpdateStockQuantity(List<RegisterOutStockPatchModel> registerOutStocks, bool apply)
        {
            foreach (var stockToUpdate in registerOutStocks)
            {
                var stock = await _repository.GetByIdAsync(stockToUpdate.StockId);

                if (apply)
                    stock.Quantity -= stockToUpdate.Quantity;
                else
                    stock.Quantity += stockToUpdate.Quantity;

                await _repository.UpdateAsync(stock);
            }
        }
    }
}
