using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRegisterOutRepository : IRepositoryBase<RegisterOut, Guid>
    {
        Task<bool> CheckRegisterOutAsync(Guid id, CancellationToken cancellationToken);
        Task<RegisterOut> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation);

        Task<Dictionary<DateTime, decimal>> GetConsumptionsPerMonth(CancellationToken cancellation);

        Task<List<RegisterOut>> GetToListAsync(CancellationToken cancellation);
    }
}