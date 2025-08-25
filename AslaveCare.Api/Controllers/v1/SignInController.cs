using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Models.v1.Employee;
using AslaveCare.Domain.Models.v1.SignIn;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Net;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Api.Controllers.v1
{
    public class SignInController : ApplicationControllerBase
    {
        private readonly ISignInService _service;

        public SignInController(ISignInService signInService)
        {
            _service = signInService;
        }

        /// <summary>
        /// SignIn Controller route to authenticate with email and password.
        /// </summary>
        /// <param name="signInEmailRequestModel">SignInEmailRequestModel</param>
        [AllowAnonymous]
        [HttpPost("email")]
        [ProducesResponseType(typeof(OkResponse<SignInAuthenticationModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> SignInAsync([FromBody] SignInEmailRequestModel signInEmailRequestModel)
        {
            return await _service.SignInAsync(signInEmailRequestModel);
        }

        /// <summary>
        /// SignIn Controller route to request recover password.
        /// </summary>
        /// <param name="signInRecoverPasswordRequestModel"></param>
        [AllowAnonymous]
        [HttpPost("request-recover-password")]
        [ProducesResponseType(typeof(OkResponse<object>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> RecoverPassword([FromBody] SignInRecoverPasswordRequestModel signInRecoverPasswordRequestModel)
        {
            return await _service.RequestRecoverPasswordByEmailAsync(signInRecoverPasswordRequestModel.Email);
        }

        //TODO: cachear no REDIS
        /// <summary>
        /// SignIn Controller route to validate confirmation code from email.
        /// </summary>
        /// <param name="emailConfirmationCodeModel"></param>
        [AllowAnonymous]
        [HttpPost("validate-email-confirmation-code")]
        [ProducesResponseType(typeof(OkResponse<SignInRecoverPasswordAuthenticationModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> ValidateConfirmationCode([FromBody] SignInEmailConfirmationCodeModel emailConfirmationCodeModel)
        {
            return await _service.ValidateEmailConfirmationCodeAsync(emailConfirmationCodeModel);
        }

        //TODO: cachear no REDIS
        /// <summary>
        /// SignIn Controller route to validate confirmation code from sms.
        /// </summary>
        /// <param name="phoneNumberConfirmationCodeModel"></param>
        [AllowAnonymous]
        [HttpPost("validate-phone-number-confirmation-code")]
        [ProducesResponseType(typeof(OkResponse<SignInRecoverPasswordAuthenticationModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> ValidateConfirmationCode([FromBody] SignInPhoneNumberConfirmationCodeModel phoneNumberConfirmationCodeModel)
        {
            return await _service.ValidatePhoneNumberConfirmationCodeAsync(phoneNumberConfirmationCodeModel);
        }

        //TODO: cachear no REDIS
        /// <summary>
        /// SignIn Controller route to validate recover password confirmation code from email.
        /// </summary>
        /// <param name="emailConfirmationCodeModel"></param>
        [AllowAnonymous]
        [HttpPost("validate-recover-password-confirmation-code")]
        [ProducesResponseType(typeof(OkResponse<SignInRecoverPasswordAuthenticationModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> ValidateRecoverPasswordConfirmationCode([FromBody] SignInEmailConfirmationCodeModel emailConfirmationCodeModel)
        {
            return await _service.ValidateRecoverPasswordConfirmationCodeAsync(emailConfirmationCodeModel);
        }

        /// <summary>
        /// [Authenticated] SignIn Controller route to change password.
        /// </summary>
        /// <param name="signInChangePasswordModel"></param>
        [HttpPost("change-password")]
        [ProducesResponseType(typeof(OkResponse<object>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> ChangePassword([FromBody] SignInChangePasswordModel signInChangePasswordModel)
        {
            return await _service.ChangePasswordAsync(Request.Headers["Authorization"], signInChangePasswordModel);
        }

        /// <summary>
        /// SignIn Controller route to resend confirmation code by sms.
        /// </summary>
        /// <param name="phoneNumber"></param>
        [AllowAnonymous]
        [HttpPost("resend-confirmation-code-sms/{phoneNumber}")]
        [ProducesResponseType(typeof(OkResponse<object>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> ResendConfirmationCodeSms([Required] string phoneNumber)
        {
            return await _service.ResendConfirmationCodeSmsAsync(phoneNumber);
        }

        /// <summary>
        /// SignIn Controller route to resend confirmation code by email.
        /// </summary>
        /// <param name="email"></param>
        [AllowAnonymous]
        [HttpPost("resend-confirmation-code-email/{email}")]
        [ProducesResponseType(typeof(OkResponse<object>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> ResendConfirmationCodeEmail([Required] string email)
        {
            return await _service.ResendConfirmationCodeEmailAsync(email);
        }

        //[AllowAnonymous]
        //[HttpPost("social-media")]
        //[ProducesResponseType(typeof(OkResponse<object>), (int)HttpStatusCode.OK)]
        //[ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        //[ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        //[ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        //[ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        //public async Task<IResponseBase> SignUpSocialMediaAsync([FromBody] SignInSocialMediaModel signUpSocialMediaModel)
        //{
        //    return await _service.SignInSignUpSocialMediaAsync(signUpSocialMediaModel);
        //}

        /// <summary>
        /// [Authenticated] SignIn Controller - id from token to Get User Entity.
        /// </summary>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        [HttpGet("token")]
        [ProducesResponseType(typeof(OkResponse<GenericUserProfileGetWithoutSensitiveDataModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetByTokenAsync(CancellationToken cancellationToken)
        {
            return await _service.GetByTokenAsync(Request.Headers["Authorization"], cancellationToken);
        }

        /// <summary>
        /// [Authenticated] SignIn Controller - id from token to Get User Entity.
        /// </summary>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        [HttpGet("any-to-list")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<GenericUserProfileGetWithoutSensitiveDataModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(ConflictResponse), (int)HttpStatusCode.Conflict)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetAnyToListAsync(CancellationToken cancellationToken)
        {
            return await _service.GetAnyToListAsync(cancellationToken);
        }
    }
}