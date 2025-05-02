using System;
using System.Threading;
using System.Threading.Tasks;
using System.Collections.Generic;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRegisterOutRepository : IRepositoryBase<RegisterOut, Guid>
    {
        Task<List<RegisterOut>> GetToListAsync(CancellationToken cancellation);
    }
}
