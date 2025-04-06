using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using SlaveCare.Domain.Models.v1.Supplier;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Repositories
{
    public interface ISupplierRepository : IRepositoryBase<Supplier, Guid>
    {
        Task<Supplier> GetByEmailAsync(string email, CancellationToken cancellation = default);
        Task<List<Supplier>> GetByParameters(SupplierGetByParametersModel parameters, CancellationToken cancellation = default);
        Task<List<Supplier>> GetToListAsync(CancellationToken cancellation = default);
    }
}