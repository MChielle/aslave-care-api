using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterOutStock;
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
    public class RegisterOutStockService : MtMServiceBase<RegisterOutStockGetRegisterOutModel, RegisterOutStockGetStockModel, RegisterOutStockPatchModel, RegisterOutStockModel, RegisterOutStock, Guid, Guid>, IRegisterOutStockService
    {
        private readonly IRegisterOutStockRepository _RegisterOutStockRepository;

        public RegisterOutStockService(IRegisterOutStockRepository RegisterOutStockRepository, IServiceContext serviceContext) : base(RegisterOutStockRepository, serviceContext)
        {
            _RegisterOutStockRepository = RegisterOutStockRepository;
        }

        public override async Task<IResponseBase> GetByIdsAsync(Guid registerOutId, Guid stockId, CancellationToken cancellationToken = default)
        {
            var response = await _RegisterOutStockRepository.GetByIdsAsync(registerOutId, stockId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<RegisterOutStockModel>(Mapper.Map<RegisterOutStockModel>(response));
        }

        public override async Task<IResponseBase> GetByStrongIdAsync(Guid registerOutId, CancellationToken cancellationToken = default)
        {
            var response = await _RegisterOutStockRepository.GetByStrongIdAsync(registerOutId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterOutStockGetStockModel>>(Mapper.Map<IEnumerable<RegisterOutStockGetStockModel>>(response));
        }

        public override async Task<IResponseBase> GetByWeakIdAsync(Guid stockId, CancellationToken cancellationToken = default)
        {
            var response = await _RegisterOutStockRepository.GetByWeakIdAsync(stockId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterOutStockGetStockModel>>(Mapper.Map<IEnumerable<RegisterOutStockGetStockModel>>(response));
        }

        public override async Task<IResponseBase> UpdateAsync(IEnumerable<RegisterOutStockModel> registerOutStockModels)
        {
            var result = await _RegisterOutStockRepository.UpdateAsync(Mapper.Map<IEnumerable<RegisterOutStock>>(registerOutStockModels));
            if (result == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterOutStockModel>>(Mapper.Map<IEnumerable<RegisterOutStockModel>>(result));
        }

        public override Task<IResponseBase> AddOrDeleteAsync(Guid registerOutId, IEnumerable<RegisterOutStockPatchModel> models)
        {
            models.ToList().ForEach(model => model.RegisterOutId = registerOutId);
            return base.AddOrDeleteAsync(registerOutId, models);
        }

        public async Task<IResponseBase> AddAsync(Guid registerOutId, RegisterOutStockPatchModel model)
        {
            model.RegisterOutId = registerOutId;
            var RegisterOutStocks = await _RegisterOutStockRepository.GetByStrongIdAsync(registerOutId);
            if (RegisterOutStocks.Any(x => x.RegisterOutId == model.RegisterOutId && x.StockId == model.StockId)) return new ConflictResponse(ConstantMessages.CRUD_CONFLICT);
            var models = Mapper.Map<List<RegisterOutStockPatchModel>>(RegisterOutStocks);
            models.Add(model);
            return await base.AddOrDeleteAsync(registerOutId, models);
        }
    }
}