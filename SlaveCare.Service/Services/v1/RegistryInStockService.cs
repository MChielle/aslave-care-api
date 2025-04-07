using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Models.v1.RegistryInStock;

namespace SlaveCare.Service.Services.v1
{
    public class RegistryInStockService : MtMServiceBase<RegistryInStockGetRegistryInModel, RegistryInStockGetStockModel, RegistryInStockPatchModel, RegistryInStockModel, RegistryInStock, Guid, Guid>, IRegistryInStockService
    {
        private readonly IRegistryInStockRepository _RegistryInStockRepository;

        public RegistryInStockService(IRegistryInStockRepository RegistryInStockRepository, IServiceContext serviceContext) : base(RegistryInStockRepository, serviceContext)
        {
            _RegistryInStockRepository = RegistryInStockRepository;
        }

        public override async Task<IResponseBase> GetByIdsAsync(Guid RegistryInId, Guid StockId, CancellationToken cancellationToken = default)
        {
            var response = await _RegistryInStockRepository.GetByIdsAsync(RegistryInId, StockId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<RegistryInStockModel>(Mapper.Map<RegistryInStockModel>(response));
        }

        public override async Task<IResponseBase> GetByStrongIdAsync(Guid RegistryInId, CancellationToken cancellationToken = default)
        {
            var response = await _RegistryInStockRepository.GetByStrongIdAsync(RegistryInId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegistryInStockGetStockModel>>(Mapper.Map<IEnumerable<RegistryInStockGetStockModel>>(response));
        }

        public override async Task<IResponseBase> GetByWeakIdAsync(Guid StockId, CancellationToken cancellationToken = default)
        {
            var response = await _RegistryInStockRepository.GetByWeakIdAsync(StockId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegistryInStockGetStockModel>>(Mapper.Map<IEnumerable<RegistryInStockGetStockModel>>(response));
        }

        public override async Task<IResponseBase> UpdateAsync(IEnumerable<RegistryInStockModel> RegistryInStockModels)
        {
            var result = await _RegistryInStockRepository.UpdateAsync(Mapper.Map<IEnumerable<RegistryInStock>>(RegistryInStockModels));
            if (result == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegistryInStockModel>>(Mapper.Map<IEnumerable<RegistryInStockModel>>(result));
        }

        public override Task<IResponseBase> AddOrDeleteAsync(Guid RegistryInId, IEnumerable<RegistryInStockPatchModel> models)
        {
            models.ToList().ForEach(model => model.RegistryInId = RegistryInId);
            return base.AddOrDeleteAsync(RegistryInId, models);
        }

        public async Task<IResponseBase> AddAsync(Guid RegistryInId, RegistryInStockPatchModel model)
        {
            model.RegistryInId = RegistryInId;
            var RegistryInStocks = await _RegistryInStockRepository.GetByStrongIdAsync(RegistryInId);
            if (RegistryInStocks.Any(x => x.RegistryInId == model.RegistryInId && x.StockId == model.StockId)) return new ConflictResponse(ConstantMessages.CRUD_CONFLICT);
            var models = Mapper.Map<List<RegistryInStockPatchModel>>(RegistryInStocks);
            models.Add(model);
            return await base.AddOrDeleteAsync(RegistryInId, models);
        }
    }
}