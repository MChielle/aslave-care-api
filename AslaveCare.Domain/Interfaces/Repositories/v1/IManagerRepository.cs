using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IManagerRepository : IRepositoryBase<Manager, Guid>
    {
        Task<IEnumerable<Manager>> GetAnyToListAsync(CancellationToken cancellationToken);

        Task<Manager> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken = default);
    }
}