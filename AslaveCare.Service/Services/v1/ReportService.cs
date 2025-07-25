using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Responses.Interfaces;
using System;
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

        public async Task<IResponseBase> GetStockReportAsync(CancellationToken cancellation)
        {
            return await _stockService.GetStockReportAsync(cancellation);
        }
    }
}