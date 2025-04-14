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
using SlaveCare.Domain.Models.v1.RegisterInStock;

namespace SlaveCare.Service.Services.v1
{
    public class RegisterInStockService : MtMServiceBase<RegisterInStockGetRegisterInModel, RegisterInStockGetStockModel, RegisterInStockPatchModel, RegisterInStockModel, RegisterInStock, Guid, Guid>, IRegisterInStockService
    {
        private readonly IRegisterInStockRepository _registerInStockRepository;

        public RegisterInStockService(IRegisterInStockRepository registerInStockRepository, IServiceContext serviceContext) : base(registerInStockRepository, serviceContext)
        {
            _registerInStockRepository = registerInStockRepository;
        }

        public override async Task<IResponseBase> GetByIdsAsync(Guid segisterInId, Guid stockId, CancellationToken cancellationToken = default)
        {
            var response = await _registerInStockRepository.GetByIdsAsync(segisterInId, stockId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<RegisterInStockModel>(Mapper.Map<RegisterInStockModel>(response));
        }

        public override async Task<IResponseBase> GetByStrongIdAsync(Guid registerInId, CancellationToken cancellationToken = default)
        {
            var response = await _registerInStockRepository.GetByStrongIdAsync(registerInId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterInStockGetStockModel>>(Mapper.Map<IEnumerable<RegisterInStockGetStockModel>>(response));
        }

        public override async Task<IResponseBase> GetByWeakIdAsync(Guid stockId, CancellationToken cancellationToken = default)
        {
            var response = await _registerInStockRepository.GetByWeakIdAsync(stockId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterInStockGetStockModel>>(Mapper.Map<IEnumerable<RegisterInStockGetStockModel>>(response));
        }

        public override async Task<IResponseBase> UpdateAsync(IEnumerable<RegisterInStockModel> registerInStockModels)
        {
            var result = await _registerInStockRepository.UpdateAsync(Mapper.Map<IEnumerable<RegisterInStock>>(registerInStockModels));
            if (result == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterInStockModel>>(Mapper.Map<IEnumerable<RegisterInStockModel>>(result));
        }

        public override Task<IResponseBase> AddOrDeleteAsync(Guid registerInId, IEnumerable<RegisterInStockPatchModel> models)
        {
            models.ToList().ForEach(model => model.RegisterInId = registerInId);
            return base.AddOrDeleteAsync(registerInId, models);
        }

        public async Task<IResponseBase> AddAsync(Guid registerInId, RegisterInStockPatchModel model)
        {
            model.RegisterInId = registerInId;
            var RegisterInStocks = await _registerInStockRepository.GetByStrongIdAsync(registerInId);
            if (RegisterInStocks.Any(x => x.RegisterInId == model.RegisterInId && x.StockId == model.StockId)) return new ConflictResponse(ConstantMessages.CRUD_CONFLICT);
            var models = Mapper.Map<List<RegisterInStockPatchModel>>(RegisterInStocks);
            models.Add(model);
            return await base.AddOrDeleteAsync(registerInId, models);
        }
    }
}