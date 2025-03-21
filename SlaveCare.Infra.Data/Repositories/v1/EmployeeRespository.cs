using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Core;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories.v1
{
    public class EmployeeRepository : RepositoryBase<BaseContext, Employee, Guid>, IEmployeeRepository
    {
        public EmployeeRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
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