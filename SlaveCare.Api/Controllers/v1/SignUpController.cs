using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services.v1.Authentication;
using SlaveCare.Domain.Models.v1.SignUp;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using System.Net;
using System.Threading.Tasks;

namespace SlaveCare.Api.Controllers.v1
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
        public async Task<IResponseBase> SignUpEmailAsync([FromBody] SignUpEmailModel signUpEmailRequestModel)
        {
            return await _signUpService.SignUpEmailAsync(signUpEmailRequestModel);
        }
    }
}