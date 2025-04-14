using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRegisterInRepository : IRepositoryBase<RegisterIn, Guid>
    {
        Task<List<RegisterIn>> GetToListAsync(CancellationToken cancellation);
    }
}
