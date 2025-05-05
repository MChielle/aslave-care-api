using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services;
using AslaveCare.Domain.Models.v1.RegisterOut;
using AslaveCare.Domain.Models.v1.StockType;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Domain.Responses;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Threading.Tasks;
using System.Threading;
using System.Collections.Generic;

namespace AslaveCare.Api.Controllers.v1
{
    public class StockTypeController : EntityController<StockTypeAddModel, StockTypeUpdateModel, StockTypePatchModel, StockTypeGetModel, StockTypeModel, string>
    {
        private readonly IStockTypeService _service;
        public StockTypeController(IStockTypeService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] RegisterOut Controller route to get stocktype to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<StockTypeGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync(CancellationToken cancellation)
        {
            return await _service.GetToListAsync(cancellation);
        }
    }
}