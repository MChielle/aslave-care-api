using SlaveCare.Api.Controllers.Base;
using System;
using Microsoft.AspNetCore.Mvc;
using SlaveCare.Domain.Models.v1.Stock;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System.Net;
using System.Threading.Tasks;
using System.Threading;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Models.v1.RegisterIn;

namespace SlaveCare.Api.Controllers.v1
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
        /// [Authenticated] RegisterIn Controller route to get registries to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<RegisterInGetModel>), (int)HttpStatusCode.OK)]
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