using Microsoft.AspNetCore.Mvc;
using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services;
using AslaveCare.Domain.Models.v1.TaskNote;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Stock;
using System.Collections.Generic;
using System.Net;
using Microsoft.Extensions.Primitives;
using System.Threading;

namespace AslaveCare.Api.Controllers.v1
{
    public class TaskNoteController : EntityController<TaskNoteAddModel, TaskNoteUpdateModel, TaskNotePatchModel, TaskNoteGetModel, TaskNoteModel, Guid>
    {
        private readonly ITaskNoteService _service;

        public TaskNoteController(ITaskNoteService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] TaskNote Controller route to get task notes to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<StockGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation)
        {
            return await _service.GetToListAsync(Request.Headers["Authorization"], cancellation);
        }

        public override async Task<IResponseBase> Get(int? page, int? pageSize)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        public override async Task<IResponseBase> Get(Guid id)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        public override async Task<IResponseBase> Put(Guid id, [FromBody] TaskNoteUpdateModel model)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        public override IResponseBase Delete(Guid id)
        {
            return new UnauthorizedResponse();
        }
    }
}