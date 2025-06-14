using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Models.v1.RegisterInStock;
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
    public class RegisterInStockService : MtMServiceBase<RegisterInStockGetRegisterInModel, RegisterInStockGetStockModel, RegisterInStockPatchModel, RegisterInStockModel, RegisterInStock, Guid, Guid>, IRegisterInStockService
    {
        private readonly IRegisterInStockRepository _repository;

        public RegisterInStockService(IRegisterInStockRepository repository, IServiceContext serviceContext) : base(repository, serviceContext)
        {
            _repository = repository;
        }

        public override async Task<IResponseBase> GetByIdsAsync(Guid segisterInId, Guid stockId, CancellationToken cancellationToken = default)
        {
            var response = await _repository.GetByIdsAsync(segisterInId, stockId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<RegisterInStockModel>(Mapper.Map<RegisterInStockModel>(response));
        }

        public override async Task<IResponseBase> GetByStrongIdAsync(Guid registerInId, CancellationToken cancellationToken = default)
        {
            var response = await _repository.GetByStrongIdAsync(registerInId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterInStockGetStockModel>>(Mapper.Map<IEnumerable<RegisterInStockGetStockModel>>(response));
        }

        public override async Task<IResponseBase> GetByWeakIdAsync(Guid stockId, CancellationToken cancellationToken = default)
        {
            var response = await _repository.GetByWeakIdAsync(stockId, cancellationToken);
            if (response == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<RegisterInStockGetStockModel>>(Mapper.Map<IEnumerable<RegisterInStockGetStockModel>>(response));
        }

        public override async Task<IResponseBase> UpdateAsync(IEnumerable<RegisterInStockModel> registerInStockModels)
        {
            var result = await _repository.UpdateAsync(Mapper.Map<IEnumerable<RegisterInStock>>(registerInStockModels));
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
            var RegisterInStocks = await _repository.GetByStrongIdAsync(registerInId);
            if (RegisterInStocks.Any(x => x.RegisterInId == model.RegisterInId && x.StockId == model.StockId)) return new ConflictResponse(ConstantMessages.CRUD_CONFLICT);
            var models = Mapper.Map<List<RegisterInStockPatchModel>>(RegisterInStocks);
            models.Add(model);
            return await base.AddOrDeleteAsync(registerInId, models);
        }
        public async Task<IResponseBase> GetDonationsReportAsync(DateTime initialDate, DateTime finalDate, CancellationToken cancellation)
        {
            var registersInStocks = await _repository.GetDonationsReportAsync(initialDate, finalDate, cancellation);
            if (registersInStocks == null || !registersInStocks.Any()) return new NoContentResponse();
            return new OkResponse<List<RegisterInStockGetDonationReportModel>>(Mapper.Map<List<RegisterInStockGetDonationReportModel>>(registersInStocks));
        }
    }
}