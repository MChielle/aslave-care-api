using Microsoft.AspNetCore.Mvc;
using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services;
using AslaveCare.Domain.Models.v1.Role;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Stock;
using System.Collections.Generic;
using System.Net;
using System.Threading;

namespace AslaveCare.Api.Controllers.v1
{
    public class RoleController : EntityController<RoleAddModel, RoleUpdateModel, RolePatchModel, RoleGetModel, RoleModel, Guid>
    {
        private readonly IRoleService _service;

        public RoleController(IRoleService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] Role Controller route to get role to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RoleGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation = default)
        {
            return await _service.GetToListAsync(cancellation);
        }

        public override async Task<IResponseBase> Get(int? page, int? pageSize)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        public override async Task<IResponseBase> Get(Guid id)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        public override async Task<IResponseBase> Post([FromBody] RoleAddModel model)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        public override async Task<IResponseBase> Put(Guid id, [FromBody] RoleUpdateModel model)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        public override async Task<IResponseBase> Patch(Guid id, [FromBody] RolePatchModel model)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        public override IResponseBase Delete(Guid id)
        {
            return new UnauthorizedResponse();
        }
    }
}