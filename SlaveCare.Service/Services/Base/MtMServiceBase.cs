using AutoMapper;
using SlaveCare.Domain.Entities.Core;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Service.ServiceContext;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Service.Services.Base
{
    public abstract class MtMServiceBase<TStrongEntityMtMModel, TWeakEntityMtMModel, TEntityMtMPatchModel, TEntityMtMModel, TEntityMtM, TStrongKey, TWeakKey> : IMtMServiceBase<TStrongEntityMtMModel, TWeakEntityMtMModel, TEntityMtMPatchModel, TEntityMtMModel, TStrongKey, TWeakKey>
        where TStrongEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
        where TWeakEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
        where TEntityMtMPatchModel : MtMEntityModel, IMtMEntityModel, new()
        where TEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
        where TEntityMtM : EntityMtM, IMtMEntity, new()
    {
        private readonly IMtMRepositoryBase<TEntityMtM, TStrongKey, TWeakKey> _repositoryBase;
        public readonly IMapper Mapper;

        protected MtMServiceBase(IMtMRepositoryBase<TEntityMtM, TStrongKey, TWeakKey> repositoryBase,
                           IServiceContext serviceContext)
        {
            _repositoryBase = repositoryBase;
            Mapper = serviceContext.Mapper;
        }

        public virtual async Task<IResponseBase> AddOrDeleteAsync(TStrongKey id, IEnumerable<TEntityMtMPatchModel> models)
        {
            var oldModels = await _repositoryBase.GetByStrongIdAsync(id);
            var entities = await _repositoryBase.AddOrDeleteAsync(Mapper.Map<IEnumerable<TEntityMtM>>(models), Mapper.Map<IEnumerable<TEntityMtM>>(oldModels));
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<TEntityMtMModel>>(Mapper.Map<IEnumerable<TEntityMtMModel>>(entities));
        }

        public abstract Task<IResponseBase> UpdateAsync(IEnumerable<TEntityMtMModel> entitiesMtM);

        public abstract Task<IResponseBase> GetByIdsAsync(TStrongKey sid, TWeakKey wid, CancellationToken cancellationToken = default);

        public abstract Task<IResponseBase> GetByStrongIdAsync(TStrongKey id, CancellationToken cancellationToken = default);

        public abstract Task<IResponseBase> GetByWeakIdAsync(TWeakKey id, CancellationToken cancellationToken = default);
    }
}