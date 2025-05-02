using Microsoft.AspNetCore.Mvc;
using AslaveCare.Api.Attributes;

namespace AslaveCare.Api.Controllers.Base
{
    [TokenValidation]
    [Route("api/v1/[controller]")]
    [Produces("application/json")]
    public class ApplicationControllerBase : ControllerBase
    {
    }
}
