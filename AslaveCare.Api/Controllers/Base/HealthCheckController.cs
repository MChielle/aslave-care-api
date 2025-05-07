using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;

namespace AslaveCare.Api.Controllers.Base
{
    [Route("api/[controller]")]
    public class HealthCheckController : ControllerBase
    {
        [AllowAnonymous, HttpGet]
        public IActionResult Get()
        {
            try
            {
                return Ok(new { Message = "SlaveCare API is online!" });
            }
            catch (Exception ex)
            {
                return BadRequest(new { ex.Message });
            }
        }
    }
}
