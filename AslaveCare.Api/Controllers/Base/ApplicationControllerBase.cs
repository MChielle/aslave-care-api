using AslaveCare.Api.Attributes;
using Microsoft.AspNetCore.Mvc;

namespace AslaveCare.Api.Controllers.Base
{
    [TokenValidation]
    [Route("api/v1/[controller]")]
    [Produces("application/json")]
    public class ApplicationControllerBase : ControllerBase
    {
    }
}