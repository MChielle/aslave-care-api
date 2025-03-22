using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Core;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories
{
    public class SupplierRepository : RepositoryBase<BaseContext, Supplier, Guid>, ISupplierRepository
    {
        public SupplierRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override async Task<Supplier> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await GetByIdAsync(id, cancellationToken);
        }
    }
}