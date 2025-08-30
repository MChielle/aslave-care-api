using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterIn;
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
    public class RegisterInController : EntityController<RegisterInAddModel, RegisterInUpdateModel, RegisterInPatchModel, RegisterInGetModel, RegisterInModel, Guid>
    {
        private readonly IRegisterInService _service;

        public RegisterInController(IRegisterInService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] RegisterIn Controller route to get registers to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegisterInGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation)
        {
            return await _service.GetToListAsync(cancellation);
        }

        /// <summary>
        /// [Authenticated] RegisterIn Controller route to get registry to update.
        /// </summary>
        /// <param name="id"></param>
        /// <param name="cancellation"></param>
        /// <returns></returns>
        [HttpGet("{id}/to-update")]
        [ProducesResponseType(typeof(OkResponse<RegisterInGetModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellation)
        {
            return await _service.GetByIdToUpdateAsync(id, cancellation);
        }

        /// <summary>
        /// [Authenticated] RegisterIn Controller route to get donations per month.
        /// </summary>
        /// <param name="cancellation"></param>
        /// <returns></returns>
        [HttpGet("donations-per-month")]
        [ProducesResponseType(typeof(OkResponse<Dictionary<string, decimal>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetDonationsPerMonth(CancellationToken cancellation)
        {
            return await _service.GetDonationsPerMonth(cancellation);
        }

        /// <summary>
        /// [Authenticated] RegisterIn Controller route to get shopping per month.
        /// </summary>
        /// <param name="cancellation"></param>
        /// <returns></returns>
        [HttpGet("shopping-per-month")]
        [ProducesResponseType(typeof(OkResponse<Dictionary<string, decimal>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetShoppingPerMonth(CancellationToken cancellation)
        {
            return await _service.GetShoppingPerMonth(cancellation);
        }

        /// <summary>
        /// [Authenticated] RegisterIn Controller route to revert Apply.
        /// </summary>
        /// <param name="id"></param>
        /// <param name="registerIn"></param>
        /// <param name="cancellation"></param>
        /// <returns></returns>
        [HttpPost("{id}/revert-apply")]
        [ProducesResponseType(typeof(OkResponse<bool>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> RevertApplyAsync([FromRoute] Guid id, [FromBody] RegisterInPatchModel registerIn, CancellationToken cancellation)
        {
            return await _service.RevertApplyAsync(id, registerIn, cancellation);
        }
    }
}