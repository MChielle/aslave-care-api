using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SlaveCare.Domain.Entities.Constants;
using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using System.Net;
using System.Threading.Tasks;

namespace SlaveCare.Api.Controllers.Base
{
#if DEBUG
    [AllowAnonymous]
#endif

    public abstract class EntityController<TAddModel, TUpdateModel, TPatchModel, TGetModel, TModel, TKey> : ApplicationControllerBase
        where TAddModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TUpdateModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TPatchModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TGetModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TModel : EntityModel<TKey>, IEntityModel<TKey>, new()
    {
        private readonly IServiceBase<TAddModel, TUpdateModel, TPatchModel, TGetModel, TModel, TKey> _service;

        protected EntityController(IServiceBase<TAddModel, TUpdateModel, TPatchModel, TGetModel, TModel, TKey> service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] Controller Base Get all paged.
        /// </summary>
        /// <param name="page">Page number</param>
        /// <param name="pageSize">Page size</param>
        [HttpGet]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public virtual async Task<IResponseBase> Get(int? page, int? pageSize)
        {
            var entities = await _service.GetAllPagedAsync(page, pageSize);
            return entities;
        }

        /// <summary>
        /// [Authenticated] Controller Base Get by Id.
        /// </summary>
        /// <param name="id">From Url</param>
        [HttpGet("{id}")]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public virtual async Task<IResponseBase> Get(TKey id)
        {
            var entity = await _service.GetByIdAsync(id);
            return entity;
        }

        /// <summary>
        /// [Authenticated] Controller Base Post generic model.
        /// </summary>
        /// <param name="model">From Body</param>
        [HttpPost]
        [ProducesResponseType(typeof(CreatedResponse), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public virtual async Task<IResponseBase> Post([FromBody] TAddModel model)
        {
            var savedModel = await _service.AddAsync(model);
            return savedModel;
        }

        /// <summary>
        /// [Authenticated] Controller Base Put generic model by id.
        /// </summary>
        /// <param name="id">From Url</param>
        /// <param name="model">From Body</param>
        [HttpPut("{id}")]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public virtual async Task<IResponseBase> Put(TKey id, [FromBody] TUpdateModel model)
        {
            model.Id = id;
            var savedModel = await _service.UpdateAsync(model);
            return savedModel;
        }

        /// <summary>
        /// [Authenticated] Controller Base Patch generic model by id.
        /// </summary>
        /// <param name="id">From Url</param>
        /// <param name="model">From Body</param>
        [HttpPatch("{id}")]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public virtual async Task<IResponseBase> Patch(TKey id, [FromBody] TPatchModel model)
        {
            var savedModel = await _service.Patch(id, model);
            return savedModel;
        }

        /// <summary>
        /// [Authenticated] Controller Base Delete generic model by id.
        /// </summary>
        /// <param name="id">From Url</param>
        [Authorize(Roles = $"{UserType.Master}")]
        [ApiExplorerSettings(IgnoreApi = true)]
        [HttpDelete("{id}")]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public virtual IResponseBase Delete(TKey id)
        {
            _service.Delete(id);
            return new OkResponse<TModel>(null);
        }
    }
}