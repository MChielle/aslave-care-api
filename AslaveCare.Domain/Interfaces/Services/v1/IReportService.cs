using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IReportService
    {
        Task<IResponseBase> GetDonationsReportAsync(DateTime initialDate, DateTime finalDate, CancellationToken cancellation);
        Task<IResponseBase> GetRestockReportAsync(CancellationToken cancellation);
    }
}