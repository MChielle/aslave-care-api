using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using AslaveCare.Domain.Models.v1.Supplier;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface ISupplierRepository : IRepositoryBase<Supplier, Guid>
    {
        Task<Supplier> GetByEmailAsync(string email, CancellationToken cancellation = default);

        Task<List<Supplier>> GetByParameters(SupplierGetByParametersModel parameters, CancellationToken cancellation = default);
        Task<List<Supplier>> GetMonthTopDonorsReportAsync(CancellationToken cancellation = default);
        Task<List<Supplier>> GetToListAsync(CancellationToken cancellation = default);
    }
}