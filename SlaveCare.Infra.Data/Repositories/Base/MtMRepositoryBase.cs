using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Entities.Core;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories.Base
{
    public abstract class MtMRepositoryBase<TContext, TEntityMtM, TStrongKey, TWeakKey> : IMtMRepositoryBase<TEntityMtM, TStrongKey, TWeakKey>
        where TEntityMtM : EntityMtM, IMtMEntity, new()
        where TContext : BaseContext
    {
        protected TContext _context;

        public MtMRepositoryBase(TContext context, IRepositoryContext repositoryContext)
        {
            _context = context;
        }

        private async Task AddAsync(IEnumerable<TEntityMtM> entities, IEnumerable<TEntityMtM> oldEntities)
        {
            var ToAdd = entities.Except(oldEntities);

            foreach (var item in ToAdd)
            {
                _context.Entry(item).State = EntityState.Added;
            }

            await _context.SaveChangesAsync();
        }

        private async Task DeleteAsync(IEnumerable<TEntityMtM> entities, IEnumerable<TEntityMtM> oldEntities)
        {
            var ToDelete = oldEntities.Except(entities);

            foreach (var item in ToDelete)
            {
                _context.Entry(item).State = EntityState.Deleted;
            }

            await _context.SaveChangesAsync();
        }

        public async Task<IEnumerable<TEntityMtM>> AddOrDeleteAsync(IEnumerable<TEntityMtM> entities, IEnumerable<TEntityMtM> oldEntities)
        {
            await DeleteAsync(entities, oldEntities);

            await AddAsync(entities, oldEntities);

            return entities;
        }

        public abstract Task<IEnumerable<TEntityMtM>> UpdateAsync(IEnumerable<TEntityMtM> entitiesMtM);

        public abstract Task<TEntityMtM> GetByIdsAsync(TStrongKey strongId, TWeakKey weakId, CancellationToken cancellationToken = default);

        public abstract Task<IEnumerable<TEntityMtM>> GetByStrongIdAsync(TStrongKey id, CancellationToken cancellationToken = default);

        public abstract Task<IEnumerable<TEntityMtM>> GetByWeakIdAsync(TWeakKey id, CancellationToken cancellationToken = default);
    }
}
