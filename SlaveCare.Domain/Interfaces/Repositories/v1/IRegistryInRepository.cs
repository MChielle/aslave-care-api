using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Repositories
{
    public interface IRegistryInRepository : IRepositoryBase<RegistryIn, Guid>
    {
        Task<List<RegistryIn>> GetToListAsync(CancellationToken cancellation);
    }
}