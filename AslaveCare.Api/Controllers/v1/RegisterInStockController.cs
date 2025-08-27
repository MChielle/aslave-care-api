using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterInStock;
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
    public class RegisterInStockController : EntityMtMController<RegisterInStockGetRegisterInModel, RegisterInStockGetStockModel, RegisterInStockPatchModel, RegisterInStockModel, Guid, Guid>
    {
        private readonly IRegisterInStockService _service;

        public RegisterInStockController(IRegisterInStockService service) : base(service)
        {
            _service = service;
        }

        [HttpGet("RegisterIn/{registerInId}/Stock/{stockId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterInStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetByIdsAsync(Guid registerInId, Guid stockId, CancellationToken cancellationToken)
        {
            return await base.GetByIdsAsync(registerInId, stockId, cancellationToken);
        }

        [HttpGet("RegisterIn/{registerInId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterInStockGetStockModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetStrong(Guid registerInId, CancellationToken cancellationToken)
        {
            return await base.GetStrong(registerInId, cancellationToken);
        }

        [HttpGet("Stock/{stockId}")]
        [ProducesResponseType(typeof(OkResponse<RegisterInStockGetRegisterInModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> GetWeak(Guid stockId, CancellationToken cancellationToken)
        {
            return await base.GetWeak(stockId, cancellationToken);
        }

        [HttpPatch("RegisterIn/{registerInId}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegisterInStockModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public override async Task<IResponseBase> Patch(Guid registerInId, [FromBody] IEnumerable<RegisterInStockPatchModel> model)
        {
            return await _service.AddOrDeleteAsync(registerInId, model);
        }

        [HttpPost("RegisterIn/{registerInId}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegisterInStockModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> Post(Guid registerInId, [FromBody] RegisterInStockPatchModel model)
        {
            return await _service.AddAsync(registerInId, model);
        }
    }
}