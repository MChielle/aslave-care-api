using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRoleRepository : IRepositoryBase<Role, Guid>
    {
        Task<List<Role>> GetToListAsync(CancellationToken cancellation);
    }
}