using System;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRegisterOutStockRepository : IMtMRepositoryBase<RegisterOutStock, Guid, Guid>
    {
    }
}
