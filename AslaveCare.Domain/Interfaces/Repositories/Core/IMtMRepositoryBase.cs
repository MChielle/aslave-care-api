using AslaveCare.Domain.Entities.Core;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Repositories.Core
{
    public interface IMtMRepositoryBase<TEntityMtM, TStrongKey, TWeakKey>
        where TEntityMtM : EntityMtM, IMtMEntity, new()
    {
        Task<IEnumerable<TEntityMtM>> AddOrDeleteAsync(IEnumerable<TEntityMtM> entities, IEnumerable<TEntityMtM> oldEntities);

        Task<IEnumerable<TEntityMtM>> UpdateAsync(IEnumerable<TEntityMtM> entitiesMtM);

        Task<TEntityMtM> GetByIdsAsync(TStrongKey strongId, TWeakKey weakId, CancellationToken cancellationToken = default);

        Task<IEnumerable<TEntityMtM>> GetByStrongIdAsync(TStrongKey id, CancellationToken cancellationToken = default);

        Task<IEnumerable<TEntityMtM>> GetByWeakIdAsync(TWeakKey id, CancellationToken cancellationToken = default);
    }
}