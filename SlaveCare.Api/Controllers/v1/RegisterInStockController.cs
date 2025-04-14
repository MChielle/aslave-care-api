using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;
using System.Threading;
using System;
using SlaveCare.Domain.Models.v1.RegisterInStock;

namespace SlaveCare.Api.Controllers.v1
{
    public class RegisterInStockController : EntityMtMController<RegisterInStockGetRegisterInModel, RegisterInStockGetStockModel, RegisterInStockPatchModel, RegisterInStockModel, Guid, Guid>
    {
        private readonly IRegisterInStockService _service;

        public RegisterInStockController(IRegisterInStockService service) : base(service)
        {
            _service = service;
        }

        [HttpGet("RegisterIn/{RegisterInId}/Stock/{StockId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterInStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetByIdsAsync(Guid RegisterInId, Guid StockId, CancellationToken cancellationToken)
        {
            return await base.GetByIdsAsync(RegisterInId, StockId, cancellationToken);
        }

        [HttpGet("RegisterIn/{RegisterInId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterInStockGetStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetStrong(Guid RegisterInId, CancellationToken cancellationToken)
        {
            return await base.GetStrong(RegisterInId, cancellationToken);
        }

        [HttpGet("Stock/{StockId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterInStockGetRegisterInModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetWeak(Guid StockId, CancellationToken cancellationToken)
        {
            return await base.GetWeak(StockId, cancellationToken);
        }

        [HttpPatch("RegisterIn/{RegisterInId}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegisterInStockModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> Patch(Guid RegisterInId, [FromBody] IEnumerable<RegisterInStockPatchModel> model)
        {
            return await _service.AddOrDeleteAsync(RegisterInId, model);
        }

        [HttpPost("RegisterIn/{RegisterInId}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegisterInStockModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> Post(Guid RegisterInId, [FromBody] RegisterInStockPatchModel model)
        {
            return await _service.AddAsync(RegisterInId, model);
        }
    }
}
