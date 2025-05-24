using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IEmployeeRepository : IRepositoryBase<Employee, Guid>
    {
        Task<IEnumerable<Employee>> GetAnyToListAsync(CancellationToken cancellationToken);
        Task<Employee> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken = default);
    }
}