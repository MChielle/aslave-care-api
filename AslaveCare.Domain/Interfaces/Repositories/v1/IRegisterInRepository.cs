using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRegisterInRepository : IRepositoryBase<RegisterIn, Guid>
    {
        Task<List<RegisterIn>> GetToListAsync(CancellationToken cancellation);

        Task<RegisterIn> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation);
        Task<Dictionary<string, decimal>> GetDonationsByMonth(CancellationToken cancellation);
    }
}
