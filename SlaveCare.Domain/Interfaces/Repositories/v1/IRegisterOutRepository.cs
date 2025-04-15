using System;
using System.Threading;
using System.Threading.Tasks;
using SlaveCare.Domain.Entities;
using System.Collections.Generic;
using SlaveCare.Domain.Interfaces.Repositories.Core;

namespace SlaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRegisterOutRepository : IRepositoryBase<RegisterOut, Guid>
    {
        Task<List<RegisterOut>> GetToListAsync(CancellationToken cancellation);
    }
}