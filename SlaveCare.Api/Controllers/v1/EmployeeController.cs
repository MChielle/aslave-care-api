using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Models.v1.Employee;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses.Messages;
using System;
using System.Net;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Api.Controllers.v1
{
    public class EmployeeController : EntityController<EmployeeAddModel, EmployeeUpdateModel, EmployeePatchModel, EmployeeGetModel, EmployeeModel, Guid>
    {
        private readonly IEmployeeService _service;

        public EmployeeController(IEmployeeService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] Replace Employee data by DELETED text by User Id.
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

        /// <summary>
        /// [Authenticated] Employee Controller - Employee id from token to Get Employee.
        /// </summary>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        [HttpGet("token")]
        [ProducesResponseType(typeof(OkResponse<EmployeeGetWithoutSensitiveDataModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetByTokenAsync(CancellationToken cancellationToken)
        {
            return await _service.GetByTokenAsync(Request.Headers["Authorization"], cancellationToken);
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public override IResponseBase Delete(Guid id)
        {
            return base.Delete(id);
        }
    }
}