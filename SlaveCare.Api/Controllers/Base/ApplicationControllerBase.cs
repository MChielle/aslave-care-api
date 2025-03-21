using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Attributes;

namespace SlaveCare.Api.Controllers.Base
{
    [TokenValidation]
    [Route("api/v1/[controller]")]
    [Produces("application/json")]
    public class ApplicationControllerBase : ControllerBase
    {
    }
}