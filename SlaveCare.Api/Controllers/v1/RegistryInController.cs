using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services;
using System;
using SlaveCare.Domain.Models.v1.RegistryIn;
using Microsoft.AspNetCore.Mvc;
using SlaveCare.Domain.Models.v1.Stock;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System.Net;
using System.Threading.Tasks;
using System.Threading;

namespace SlaveCare.Api.Controllers.v1
{
    public class RegistryInController : EntityController<RegistryInAddModel, RegistryInUpdateModel, RegistryInPatchModel, RegistryInGetModel, RegistryInModel, Guid>
    {
        private readonly IRegistryInService _service;
        public RegistryInController(IRegistryInService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] RegistryIn Controller route to get registries to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<RegistryInGetModel>), (int)HttpStatusCode.OK)]
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