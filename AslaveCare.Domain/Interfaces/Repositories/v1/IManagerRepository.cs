using System;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IManagerRepository : IRepositoryBase<Manager, Guid>
    {
        Task<Manager> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken = default);
    }
}
