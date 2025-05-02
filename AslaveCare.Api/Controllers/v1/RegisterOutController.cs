using System;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Threading.Tasks;
using System.Threading;
using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterOut;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Api.Controllers.v1
{
    public class RegisterOutController : EntityController<RegisterOutAddModel, RegisterOutUpdateModel, RegisterOutPatchModel, RegisterOutGetModel, RegisterOutModel, Guid>
    {
        private readonly IRegisterOutService _service;
        public RegisterOutController(IRegisterOutService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] RegisterOut Controller route to get registers to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<RegisterOutGetModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation)
        {
            return await _service.GetToListAsync(cancellation);
        }
    }
}
