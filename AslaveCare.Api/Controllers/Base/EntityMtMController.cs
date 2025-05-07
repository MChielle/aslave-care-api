using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Api.Controllers.Base
{
    public class EntityMtMController<TStrongEntityMtMModel, TWeakEntityMtMModel, TEntityMtMPatchModel, TEntityMtMModel, TStrongKey, TWeakKey> : ApplicationControllerBase
        where TStrongEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
        where TWeakEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
        where TEntityMtMPatchModel : MtMEntityModel, IMtMEntityModel, new()
        where TEntityMtMModel : MtMEntityModel, IMtMEntityModel, new()
    {
        private readonly IMtMServiceBase<TStrongEntityMtMModel, TWeakEntityMtMModel, TEntityMtMPatchModel, TEntityMtMModel, TStrongKey, TWeakKey> _service;

        public EntityMtMController(IMtMServiceBase<TStrongEntityMtMModel, TWeakEntityMtMModel, TEntityMtMPatchModel, TEntityMtMModel, TStrongKey, TWeakKey> service)
        {
            _service = service;
        }

        //[ApiExplorerSettings(IgnoreApi = true)]
        [HttpPatch("s/{sId}")]
        public virtual async Task<IResponseBase> Patch(TStrongKey sId, [FromBody] IEnumerable<TEntityMtMPatchModel> model)
        {
            return await _service.AddOrDeleteAsync(sId, model);
        }

        //[ApiExplorerSettings(IgnoreApi = true)]
        [HttpGet("s/{sId}/w/{wId}")]
        public virtual async Task<IResponseBase> GetByIdsAsync(TStrongKey sId, TWeakKey wId, CancellationToken cancellationToken)
        {
            return await _service.GetByIdsAsync(sId, wId, cancellationToken);
        }

        //[ApiExplorerSettings(IgnoreApi = true)]
        [HttpGet("s/{sId}")]
        public virtual async Task<IResponseBase> GetStrong(TStrongKey sId, CancellationToken cancellationToken)
        {
            return await _service.GetByStrongIdAsync(sId, cancellationToken);
        }

        //[ApiExplorerSettings(IgnoreApi = true)]
        [HttpGet("w/{wId}")]
        public virtual async Task<IResponseBase> GetWeak(TWeakKey wId, CancellationToken cancellationToken)
        {
            return await _service.GetByWeakIdAsync(wId, cancellationToken);
        }

        //[ApiExplorerSettings(IgnoreApi = true)]
        [HttpPut]
        public virtual async Task<IResponseBase> Put([FromBody] IEnumerable<TEntityMtMModel> models)
        {
            return await _service.UpdateAsync(models);
        }
    }
}
