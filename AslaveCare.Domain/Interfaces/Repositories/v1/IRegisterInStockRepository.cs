using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Threading;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRegisterInStockRepository : IMtMRepositoryBase<RegisterInStock, Guid, Guid>
    {
        Task<List<RegisterInStock>> GetDonationsReportAsync(DateTime initialDate, DateTime finalDate, CancellationToken cancellation);
        Task<List<RegisterInStock>> GetStockHistoryReportAsync(Guid stockId, CancellationToken cancellation);
    }
}