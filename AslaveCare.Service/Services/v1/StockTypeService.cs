using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.StockType;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1
{
    public class StockTypeService : ServiceBase<StockTypeAddModel, StockTypeUpdateModel, StockTypePatchModel, StockTypeGetModel, StockTypeModel, StockType, string>, IStockTypeService
    {
        private readonly IStockTypeRepository _repository;

        public StockTypeService(IStockTypeRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
            _repository = repository;
        }

        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            var entities = await _repository.GetToListAsync(cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IList<StockTypeGetModel>>(Mapper.Map<IList<StockTypeGetModel>>(entities));
        }
    }
}