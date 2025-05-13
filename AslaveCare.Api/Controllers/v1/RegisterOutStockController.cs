using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterOutStock;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Net;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Api.Controllers.v1
{
    public class RegisterOutStockController : EntityMtMController<RegisterOutStockGetRegisterOutModel, RegisterOutStockGetStockModel, RegisterOutStockPatchModel, RegisterOutStockModel, Guid, Guid>
    {
        private readonly IRegisterOutStockService _service;

        public RegisterOutStockController(IRegisterOutStockService service) : base(service)
        {
            _service = service;
        }

        [HttpGet("RegisterOut/{registerOutId}/Stock/{stockId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterOutStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetByIdsAsync(Guid registerOutId, Guid stockId, CancellationToken cancellationToken)
        {
            return await base.GetByIdsAsync(registerOutId, stockId, cancellationToken);
        }

        [HttpGet("RegisterOut/{registerOutId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterOutStockGetStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetStrong(Guid registerOutId, CancellationToken cancellationToken)
        {
            return await base.GetStrong(registerOutId, cancellationToken);
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