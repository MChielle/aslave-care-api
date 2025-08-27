using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Stock.GetHistoryReport;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1
{
    public class ReportService : IReportService
    {
        private readonly IStockService _stockService;
        private readonly IRegisterInStockService _registerInStockService;
        private readonly IRegisterOutStockService _registerOutStockService;
        private readonly ISupplierService _supplierService;

        public ReportService(IStockService stockService, IRegisterInStockService registerInStockService, ISupplierService supplierService, IRegisterOutStockService registerOutStockService)
        {
            _stockService = stockService;
            _registerInStockService = registerInStockService;
            _supplierService = supplierService;
            _registerOutStockService = registerOutStockService;
        }

        public async Task<IResponseBase> GetConsumptionReportAsync(DateTime initialDate, DateTime finalDate, CancellationToken cancellation)
        {
            return await _registerOutStockService.GetConsumptionReportAsync(initialDate, finalDate, cancellation);
        }

        public async Task<IResponseBase> GetDonationsReportAsync(DateTime initialDate, DateTime finalDate, CancellationToken cancellation)
        {
            return await _registerInStockService.GetDonationsReportAsync(initialDate, finalDate, cancellation);
        }

        public async Task<IResponseBase> GetMonthTopDonorsReportAsync(CancellationToken cancellation)
        {
            return await _supplierService.GetMonthTopDonorsReportAsync(cancellation);
        }

        public async Task<IResponseBase> GetRestockReportAsync(CancellationToken cancellation)
        {
            return await _stockService.GetRestockReportAsync(cancellation);
        }

        public async Task<IResponseBase> GetStockHistoryReportAsync(Guid stockId, CancellationToken cancellation)
        {
            var registerInReport = await _registerInStockService.GetStockHistoryReportAsync(stockId, cancellation);
            var registerOutReport = await _registerOutStockService.GetStockHistoryReportAsync(stockId, cancellation);

            if (registerInReport is BadRequestResponse || registerOutReport is BadRequestResponse) return new BadRequestResponse("Could not retrieve stock history report.", null);
            if (registerInReport is NoContentResponse && registerOutReport is NoContentResponse) return new NoContentResponse();

            List<StockGetRegisterHistoryReportModel> response = new();

            if (registerInReport.IsSuccess)
            {
                var registerIn = (OkResponse<List<StockGetRegisterHistoryReportModel>>)registerInReport;
                response.AddRange(registerIn.Data);
            }

            if (registerOutReport.IsSuccess)
            {
                var registerOut = (OkResponse<List<StockGetRegisterHistoryReportModel>>)registerOutReport;
                response.AddRange(registerOut.Data);
            }

            return new OkResponse<List<StockGetRegisterHistoryReportModel>>(response);
        }

        public async Task<IResponseBase> GetStockReportAsync(CancellationToken cancellation)
        {
            return await _stockService.GetStockReportAsync(cancellation);
        }
    }
}