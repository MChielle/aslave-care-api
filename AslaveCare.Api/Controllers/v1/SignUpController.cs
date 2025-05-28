using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Models.v1.SignUp;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Threading.Tasks;

namespace AslaveCare.Api.Controllers.v1
{
    public class SignUpController : ApplicationControllerBase
    {
        private readonly ISignUpService _signUpService;

        public SignUpController(ISignUpService service)
        {
            _signUpService = service;
        }

        [AllowAnonymous]
        [HttpPost("Email")]
        [ProducesResponseType(typeof(OkResponse<object>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> SignUpEmailAsync([FromBody] SignUpEmailModel signUpEmailModel)
        {
            return await _signUpService.SignUpEmailAsync(signUpEmailModel, UserType.Employee);
        }
    }
}