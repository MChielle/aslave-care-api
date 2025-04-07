using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using System;

namespace SlaveCare.Domain.Interfaces.Repositories
{
    public interface IEntryRepository : IRepositoryBase<Entry, Guid>
    {
    }
}