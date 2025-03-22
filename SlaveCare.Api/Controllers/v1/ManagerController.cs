using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Models.v1.Manager;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses.Messages;
using System;
using System.Net;
using System.Threading.Tasks;

namespace SlaveCare.Api.Controllers.v1
{
    public class ManagerController : EntityController<ManagerAddModel, ManagerUpdateModel, ManagerPatchModel, ManagerGetModel, ManagerModel, Guid>
    {
        private readonly IManagerService _service;

        public ManagerController(IManagerService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] Replace Manager data by DELETED text by User Id.
        /// </summary>
        /// <param name="userId"></param>
        [HttpDelete("User/{userId}/soft-delete")]
        [ProducesResponseType(typeof(OkResponse<DefaultMessageResponse>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> SoftDeleteByUserId(Guid userId)
        {
            return await _service.SoftDeleteByUserId(userId);
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public override IResponseBase Delete(Guid id)
        {
            return base.Delete(id);
        }
    }
}