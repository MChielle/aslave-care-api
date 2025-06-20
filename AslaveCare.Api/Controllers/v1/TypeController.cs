using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace AslaveCare.Api.Controllers.v1
{
    [AllowAnonymous]
    [Route("api/v1/[controller]")]
    [Produces("application/json")]
    public class TypeController : ControllerBase
    {
        [HttpGet("stock-type")]
        public IResponseBase GetStockType()
        {
            return new OkResponse<object>(EnumExtensions.EnumToObject<StockType>());
        }
    }
}