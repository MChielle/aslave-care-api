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
        private readonly IRegisterInService _registerInService;
        private readonly IRegisterInStockService _registerInStockService;

        public ReportService(IStockService stockService, IRegisterInService registerInService, IRegisterInStockService registerInStockService)
        {
            _stockService = stockService;
            _registerInService = registerInService;
            _registerInStockService = registerInStockService;
        }

        public async Task<IResponseBase> GetDonationsReportAsync(DateTime initialDate, DateTime finalDate, CancellationToken cancellation)
        {
            return await _registerInStockService.GetDonationsReportAsync(initialDate, finalDate, cancellation);
        }

        public async Task<IResponseBase> GetRestockReportAsync(CancellationToken cancellation)
        {
            return await _stockService.GetRestockReportAsync(cancellation);
        }
    }
}