using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Infra.Data.Repositories
{
    public class StockTypeRepository : RepositoryBase<BaseContext, StockType, string>, IStockTypeRepository
    {
        public StockTypeRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override async Task<StockType> GetCompleteByIdAsync(string id, CancellationToken cancellationToken = default)
        {
            return await GetByIdAsync(id, cancellationToken);
        }

        public async Task<List<StockType>> GetToListAsync(CancellationToken cancellation = default)
        {
            return await _context.StockTypes
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null))
                .ToListAsync(cancellation);
        }
    }
}