using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;
using System.Threading;
using System;
using SlaveCare.Domain.Models.v1.RegisterOutStocke;
using SlaveCare.Domain.Interfaces.Services.v1;

namespace SlaveCare.Api.Controllers.v1
{
    public class RegisterOutStockController : EntityMtMController<RegisterOutStockGetRegisterOutModel, RegisterOutStockGetStockModel, RegisterOutStockPatchModel, RegisterOutStockModel, Guid, Guid>
    {
        private readonly IRegisterOutStockService _service;

        public RegisterOutStockController(IRegisterOutStockService service) : base(service)
        {
            _service = service;
        }

        [HttpGet("RegisterOut/{RegisterOutId}/Stock/{StockId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterOutStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetByIdsAsync(Guid RegisterOutId, Guid StockId, CancellationToken cancellationToken)
        {
            return await base.GetByIdsAsync(RegisterOutId, StockId, cancellationToken);
        }

        [HttpGet("RegisterOut/{RegisterOutId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterOutStockGetStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetStrong(Guid RegisterOutId, CancellationToken cancellationToken)
        {
            return await base.GetStrong(RegisterOutId, cancellationToken);
        }

        [HttpGet("Stock/{StockId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterOutStockGetRegisterOutModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetWeak(Guid StockId, CancellationToken cancellationToken)
        {
            return await base.GetWeak(StockId, cancellationToken);
        }

        [HttpPatch("RegisterOut/{RegisterOutId}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegisterOutStockModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> Patch(Guid RegisterOutId, [FromBody] IEnumerable<RegisterOutStockPatchModel> model)
        {
            return await _service.AddOrDeleteAsync(RegisterOutId, model);
        }

        [HttpPost("RegisterOut/{RegisterOutId}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegisterOutStockModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> Post(Guid RegisterOutId, [FromBody] RegisterOutStockPatchModel model)
        {
            return await _service.AddAsync(RegisterOutId, model);
        }
    }
}
