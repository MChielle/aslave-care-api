using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Infra.Data.Repositories.v1
{
    public class EmployeeRepository : RepositoryBase<BaseContext, Employee, Guid>, IEmployeeRepository
    {
        public EmployeeRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public async Task<IEnumerable<Employee>> GetAnyToListAsync(CancellationToken cancellationToken)
        {
            return await _context.Employees
                .Include(x => x.User)
                .Where(x => x.Disable != true && x.DeletionDate == null)
                .AsNoTracking()
                .ToListAsync();
        }

        public async Task<Employee> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken = default)
        {
            return await _context.Employees
                .Where(x => x.UserId == userId)
                .AsNoTracking()
                .FirstOrDefaultAsync(cancellationToken);
        }

        public override async Task<Employee> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await _context.Employees
                .Include(x => x.User)
                .Where(x => x.Id == id)
                .AsNoTracking()
                .FirstOrDefaultAsync(cancellationToken);
        }
    }
}