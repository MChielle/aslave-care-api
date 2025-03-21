using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Entities.Core;
using SlaveCare.Domain.Exceptions;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories.Core
{
    public abstract class RepositoryBase<TContext, TEntity, TKey> : IRepositoryBase<TEntity, TKey>, IDisposable
        where TEntity : Entity<TKey>, IEntity<TKey>, new()
        where TContext : BaseContext
    {
        protected TContext _context;

        protected RepositoryBase(TContext context, IRepositoryContext repositoryContext)
        {
            _context = context;
        }

        public virtual async Task<TEntity> AddAsync(TEntity entity)
        {
            try
            {
                entity.CreationDate = DateTime.UtcNow;
                await _context.Set<TEntity>().AddAsync(entity);
                await _context.SaveChangesAsync();

                return entity;
            }
            catch (Exception ex)
            {
                throw new DefaultException(ConstantMessages.CRUD_CREATE_FAIL, ex);
            }
        }

        public virtual async Task<IEnumerable<TEntity>> AddAsync(IEnumerable<TEntity> entities)
        {
            try
            {
                var list = new List<TEntity>();
                entities.ToList().ForEach(entity => entity.CreationDate = DateTime.UtcNow);
                await _context.Set<TEntity>().AddRangeAsync(entities);
                await _context.SaveChangesAsync();

                return list;
            }
            catch (Exception ex)
            {
                throw new DefaultException(ConstantMessages.CRUD_CREATE_FAIL, ex);
            }
        }

        public virtual async Task<TEntity> UpdateAsync(TEntity entity)
        {
            try
            {
                entity.LastChangeDate = DateTime.UtcNow;
                var entityfromdb = _context.Set<TEntity>().Find(entity.Id);
                if (entityfromdb == default) return null;
                entity.CreationDate = entityfromdb.CreationDate;
                var attachedEntry = _context.Entry(entityfromdb);

                attachedEntry.CurrentValues.SetValues(entity);

                await _context.SaveChangesAsync();
                return entity;
            }
            catch (Exception ex)
            {
                throw new DefaultException(ConstantMessages.CRUD_UPDATE_FAIL, ex);
            }
        }

        public async Task UpdateAsync(IEnumerable<TEntity> entities)
        {
            _context.Set<TEntity>().UpdateRange(entities);
            entities.ToList().ForEach(entity =>
            {
                entity.LastChangeDate = DateTime.UtcNow;
                _context.Entry(entity).Property(x => x.CreationDate).IsModified = false;
            });
            await _context.SaveChangesAsync();
        }

        public virtual async Task<TEntity> AddOrUpdateAsync(TEntity entity)
        {
            if (entity.Id.Equals(default(TKey)) || entity.Id.GetType() != typeof(TKey))
                entity = await AddAsync(entity);
            else
                entity = await UpdateAsync(entity);

            return entity;
        }

        public virtual async Task<IEnumerable<TEntity>> AddOrUpdateAsync(IEnumerable<TEntity> entities)
        {
            var entitiesToAdd = entities.Where(x => x.Id.Equals(default(TKey))).ToList();
            var entitiesToUpdate = entities.Where(x => !x.Id.Equals(default(TKey))).ToList();

            entitiesToAdd.ForEach(x => x.CreationDate = DateTime.UtcNow);
            entitiesToUpdate.ForEach(x => x.LastChangeDate = DateTime.UtcNow);

            if ((entitiesToAdd?.Count ?? 0) > 0)
                await AddAsync(entitiesToAdd);

            if ((entitiesToUpdate?.Count ?? 0) > 0)
                await UpdateAsync(entitiesToUpdate);

            return entities;
        }

        public virtual async Task<IEnumerable<TEntity>> GetAllAsync(Expression<Func<TEntity, bool>> predicate = null, CancellationToken cancellationToken = default)
        {
            var query = _context.Set<TEntity>().AsQueryable();

            if (predicate != null)
                query = query.Where(predicate);

            foreach (var property in _context.Model.FindEntityType(typeof(TEntity)).GetNavigations())
                query = query.Include(property.Name);

            var retorno = await query.AsNoTracking().ToListAsync(cancellationToken);

            return retorno;
        }

        public virtual async Task<IEnumerable<TEntity>> GetAllPagedAsync(int? page = null, int? pageSize = null, CancellationToken cancellationToken = default)
        {
            var query = _context.Set<TEntity>().AsQueryable();

            if (page.HasValue && pageSize.HasValue)
                query = query.Skip(page.Value * pageSize.Value)
                             .Take(pageSize.Value);

            return await query.AsNoTracking()
                              .ToListAsync(cancellationToken);
        }

        public IQueryable<TEntity> InsertAllIncludes(IQueryable<TEntity> query)
        {
            foreach (var property in _context.Model.FindEntityType(typeof(TEntity)).GetNavigations())
                query = query.Include(property.Name);

            return query;
        }

        public virtual async Task<TEntity> GetByIdAsync(TKey id, CancellationToken cancellationToken = default)
        {
            var entity = await _context.Set<TEntity>().FindAsync(new object[] { id }, cancellationToken);

            return entity;
        }

        public void Delete(TEntity entity)
        {
            _context.Set<TEntity>().Remove(entity);
            _context.SaveChanges();
        }

        public void Delete(IEnumerable<TEntity> entities)
        {
            entities.ToList().ForEach(x => Delete(x));
        }

        public async Task<bool?> Delete(TKey id)
        {
            var entity = await GetByIdAsync(id);

            Delete(entity);

            return entity != null;
        }

        public void Delete(IEnumerable<TKey> ids)
        {
            TEntity entity = null;

            ids.ToList().ForEach((id) =>
            {
                Task.Run(async () =>
                {
                    entity = await GetByIdAsync(id);
                    Delete(entity);
                }).Wait();
            });
        }

        public Task<bool> HasAny(TKey id)
        {
            return _context
                .Set<TEntity>()
                .AnyAsync(x => x.Id.Equals(id));
        }

        public virtual void Dispose()
        {
            Task.Run(async () =>
            {
                await _context.DisposeAsync();
                GC.SuppressFinalize(this);
            });
        }

        public abstract Task<TEntity> GetCompleteByIdAsync(TKey id, CancellationToken cancellationToken = default);
    }
}