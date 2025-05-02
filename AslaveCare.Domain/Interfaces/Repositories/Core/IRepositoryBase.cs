using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Entities.Core;

namespace AslaveCare.Domain.Interfaces.Repositories.Core
{
    public interface IRepositoryBase<TEntity, TKey>
        where TEntity : Entity<TKey>, IEntity<TKey>, new()
    {
        Task<TEntity> AddOrUpdateAsync(TEntity entity);

        Task<IEnumerable<TEntity>> AddOrUpdateAsync(IEnumerable<TEntity> entities);

        Task<TEntity> AddAsync(TEntity entity);

        Task<IEnumerable<TEntity>> AddAsync(IEnumerable<TEntity> entities);

        Task<TEntity> UpdateAsync(TEntity entity);

        Task UpdateAsync(IEnumerable<TEntity> entities);

        void Delete(TEntity entity);

        void Delete(IEnumerable<TEntity> entities);

        void Delete(TKey id);

        void Delete(IEnumerable<TKey> ids);

        Task<bool> HasAny(TKey id);

        IQueryable<TEntity> InsertAllIncludes(IQueryable<TEntity> query);

        Task<IEnumerable<TEntity>> GetAllAsync(Expression<Func<TEntity, bool>> predicate = null, CancellationToken cancellationToken = default);

        Task<IEnumerable<TEntity>> GetAllPagedAsync(int? page = null, int? pageSize = null, CancellationToken cancellationToken = default);

        Task<TEntity> GetByIdAsync(TKey id, CancellationToken cancellationToken = default);

        Task<TEntity> GetCompleteByIdAsync(TKey id, CancellationToken cancellationToken = default);
    }
}
