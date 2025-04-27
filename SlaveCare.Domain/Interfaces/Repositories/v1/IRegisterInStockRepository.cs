using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using System;

namespace SlaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IRegisterInStockRepository : IMtMRepositoryBase<RegisterInStock, Guid, Guid>
    {
    }
}