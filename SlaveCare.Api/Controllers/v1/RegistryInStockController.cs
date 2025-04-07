using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;
using System.Threading;
using System;
using SlaveCare.Domain.Models.v1.RegistryInStock;

namespace SlaveCare.Api.Controllers.v1
{
    public class RegistryInStockController : EntityMtMController<RegistryInStockGetRegistryInModel, RegistryInStockGetStockModel, RegistryInStockPatchModel, RegistryInStockModel, Guid, Guid>
    {
        private readonly IRegistryInStockService _service;

        public RegistryInStockController(IRegistryInStockService service) : base(service)
        {
            _service = service;
        }

        [HttpGet("RegistryIn/{RegistryInId}/Stock/{StockId}")]
        [ProducesResponseType(typeof(OkResponse<RegistryInStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetByIdsAsync(Guid RegistryInId, Guid StockId, CancellationToken cancellationToken)
        {
            return await base.GetByIdsAsync(RegistryInId, StockId, cancellationToken);
        }

        [HttpGet("RegistryIn/{RegistryInId}")]
        [ProducesResponseType(typeof(OkResponse<RegistryInStockGetStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetStrong(Guid RegistryInId, CancellationToken cancellationToken)
        {
            return await base.GetStrong(RegistryInId, cancellationToken);
        }

        [HttpGet("Stock/{StockId}")]
        [ProducesResponseType(typeof(OkResponse<RegistryInStockGetRegistryInModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetWeak(Guid StockId, CancellationToken cancellationToken)
        {
            return await base.GetWeak(StockId, cancellationToken);
        }

        [HttpPatch("RegistryIn/{RegistryInId}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegistryInStockModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> Patch(Guid RegistryInId, [FromBody] IEnumerable<RegistryInStockPatchModel> model)
        {
            return await _service.AddOrDeleteAsync(RegistryInId, model);
        }

        [HttpPost("RegistryIn/{RegistryInId}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegistryInStockModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> Post(Guid RegistryInId, [FromBody] RegistryInStockPatchModel model)
        {
            return await _service.AddAsync(RegistryInId, model);
        }
    }
}
