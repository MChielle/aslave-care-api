using System;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.Core;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IRegisterOutStockRepository : IMtMRepositoryBase<RegisterOutStock, Guid, Guid>
    {
    }
}