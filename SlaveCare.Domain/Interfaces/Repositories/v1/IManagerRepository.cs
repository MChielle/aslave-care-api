using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IManagerRepository : IRepositoryBase<Manager, Guid>
    {
        Task<Manager> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken = default);
    }
}