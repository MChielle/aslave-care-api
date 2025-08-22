using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Entities.Core;
using AslaveCare.Domain.Exceptions;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Infra.Data.Repositories.Base
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
            try
            {
                var ToAdd = entities.Except(oldEntities);

                foreach (var item in ToAdd)
                {
                    _context.Entry(item).State = EntityState.Added;
                }

                await _context.SaveChangesAsync();
            }
            catch (Exception ex)
            {
                throw new DefaultException(ConstantMessages.CRUD_CREATE_FAIL, ex);
            }
        }

        private async Task DeleteAsync(IEnumerable<TEntityMtM> entities, IEnumerable<TEntityMtM> oldEntities)
        {
            try
            {
                var ToDelete = oldEntities.Except(entities);

                foreach (var item in ToDelete)
                {
                    _context.Entry(item).State = EntityState.Deleted;
                }

                await _context.SaveChangesAsync();
            }
            catch (Exception ex)
            {
                throw new DefaultException(ConstantMessages.CRUD_CREATE_FAIL, ex);
            }
        }

        public async Task<IEnumerable<TEntityMtM>> AddOrDeleteAsync(IEnumerable<TEntityMtM> entities, IEnumerable<TEntityMtM> oldEntities)
        {
            try
            {
                await DeleteAsync(entities, oldEntities);

                await AddAsync(entities, oldEntities);

                return entities;
            }
            catch (Exception ex)
            {
                throw new DefaultException(ConstantMessages.CRUD_CREATE_FAIL, ex);
            }
        }

        public abstract Task<IEnumerable<TEntityMtM>> UpdateAsync(IEnumerable<TEntityMtM> entitiesMtM);

        public abstract Task<TEntityMtM> GetByIdsAsync(TStrongKey strongId, TWeakKey weakId, CancellationToken cancellationToken = default);

        public abstract Task<IEnumerable<TEntityMtM>> GetByStrongIdAsync(TStrongKey id, CancellationToken cancellationToken = default);

        public abstract Task<IEnumerable<TEntityMtM>> GetByWeakIdAsync(TWeakKey id, CancellationToken cancellationToken = default);
    }
}