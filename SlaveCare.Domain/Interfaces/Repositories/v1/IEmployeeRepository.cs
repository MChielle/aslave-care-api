using Appointment.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using SlaveCare.Domain.Interfaces.Repositories.Core;

namespace Appointment.Domain.Interfaces.Repositories.v1
{
    public interface IEmployeeRepository : IRepositoryBase<Employee, Guid>
    {
        Task<Employee> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken = default);
    }
}
