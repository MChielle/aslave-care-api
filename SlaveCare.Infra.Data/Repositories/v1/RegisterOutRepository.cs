using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories
{
    public class RegisterOutRepository : RepositoryBase<BaseContext, RegisterOut, Guid>, IRegisterOutRepository
    {
        public RegisterOutRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }
        public async override Task<RegisterOut> AddAsync(RegisterOut entity)
        {
            var lastNumber = await _context.RegistersOut.OrderByDescending(x => x.Number).FirstOrDefaultAsync();
            entity.Number = lastNumber == null ? 0 : lastNumber.Number++;
            if (entity.Apply) entity.ApplyDate = DateTime.UtcNow;
            return await base.AddAsync(entity);
        }

        public override async Task<RegisterOut> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await GetByIdAsync(id, cancellationToken);
        }

        public async Task<List<RegisterOut>> GetToListAsync(CancellationToken cancellation)
        {
            return await _context.RegistersOut
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null))
                .ToListAsync(cancellation);
        }
    }
}