using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Domain.Responses.Messages;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;

namespace AslaveCare.Api.Controllers.v1
{
    public class UserController : EntityController<UserAddModel, UserUpdateModel, UserPatchModel, UserGetModel, UserModel, Guid>
    {
        private readonly IUserService _service;

        public UserController(IUserService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] Replace User data by DELETED text filtering by id.
        /// </summary>
        /// <param name="id"></param>
        [HttpDelete("{id}/soft-delete")]
        [ProducesResponseType(typeof(OkResponse<DefaultMessageResponse>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> SoftDelete(Guid id)
        {
            return await _service.SoftDeleteById(id);
        }

        /// <summary>
        /// [Authenticated] Replace User data by DELETED text filtering by email.
        /// </summary>
        /// <param name="email"></param>
        [HttpDelete("{email}/soft-delete-by-email")]
        [ProducesResponseType(typeof(OkResponse<DefaultMessageResponse>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> SoftDeleteByEmail(string email)
        {
            return await _service.SoftDeleteByEmail(email);
        }

        /// <summary>
        /// [Authenticated] Replace User data by DELETED text filtering by phoneNumber.
        /// </summary>
        /// <param name="phoneNumber"></param>
        [HttpDelete("{phoneNumber}/soft-delete-by-phone-number")]
        [ProducesResponseType(typeof(OkResponse<DefaultMessageResponse>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> SoftDeleteByPhoneNumber(string phoneNumber)
        {
            return await _service.SoftDeleteByPhoneNumber(phoneNumber);
        }

        /// <summary>
        /// [Authenticated] Update User skipping Email and Phone Number conflict validations.
        /// </summary>
        /// <param name="model"></param>
        [HttpPut("token")]
        [ProducesResponseType(typeof(OkResponse<UserGetModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> UpdateByTokenAsync([FromBody] UserUpdateModel model)
        {
            return await _service.UpdateByTokenAsync(Request.Headers["Authorization"], model);
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public override IResponseBase Delete(Guid id)
        {
            return base.Delete(id);
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public override Task<IResponseBase> Put(Guid id, [FromBody] UserUpdateModel model)
        {
            return base.Put(id, model);
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public override async Task<IResponseBase> Post([FromBody] UserAddModel model)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        [ApiExplorerSettings(IgnoreApi = true)]
        public override async Task<IResponseBase> Get(int? page, int? pageSize)
        {
            return await Task.Run(() => { return new UnauthorizedResponse(); });
        }

        [HttpPost("check-phone-number/{phoneNumber}/token")]
        public async Task<IResponseBase> CheckPhoneNumber(string phoneNumber)
        {
            return await _service.CheckPhoneNumberByToken(Request.Headers["Authorization"], phoneNumber);
        }

        [HttpPost("validate-phone-number/{phoneNumber}/confirmation-code/{confirmationCode}/token")]
        public async Task<IResponseBase> ValidatePhoneNumber(string phoneNumber, string confirmationCode)
        {
            return await _service.ValidateAndUpdatePhoneNumberByToken(Request.Headers["Authorization"], phoneNumber, confirmationCode);
        }

        /// <summary>
        /// [Authenticated] User Controller route to get User by any parameter.
        /// </summary>
        [HttpGet("get-by-parameters")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<UserGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetByParams([FromQuery] UserGetByParametersModel parameters)
        {
            return await _service.GetByParameters(parameters);
        }
    }
}