using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SlaveCare.Domain.Enums;
using SlaveCare.Domain.Extensions;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Api.Controllers.v1
{
    [AllowAnonymous]
    [Route("api/v1/[controller]")]
    [Produces("application/json")]
    public class TypeController : ControllerBase
    {
        [HttpGet("SocialMediaType")]
        public IResponseBase GetSocialMediaType()
        {
            return new OkResponse<object>(EnumExtensions.EnumToObject<SocialMediaType>());
        }
    }
}