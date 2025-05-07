using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Domain.Interfaces.Services.Core
{
    public interface IMtMServiceBase<TStrongEntityMtMModel, TWeakEntityMtMModel, TEntityMtMPatchModel, TEntityMtMModel, TStrongKey, TWeakKey>
        where TStrongEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
        where TWeakEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
        where TEntityMtMPatchModel : MtMEntityModel, IMtMEntityModel, new()
        where TEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
    {
        public Task<IResponseBase> AddOrDeleteAsync(TStrongKey id, IEnumerable<TEntityMtMPatchModel> newEntities);

        public Task<IResponseBase> UpdateAsync(IEnumerable<TEntityMtMModel> entitiesMtM);

        public Task<IResponseBase> GetByIdsAsync(TStrongKey sid, TWeakKey wid, CancellationToken cancellationToken = default);

        public Task<IResponseBase> GetByStrongIdAsync(TStrongKey id, CancellationToken cancellationToken = default);

        public Task<IResponseBase> GetByWeakIdAsync(TWeakKey id, CancellationToken cancellationToken = default);
    }
}
