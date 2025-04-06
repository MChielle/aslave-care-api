using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.Stock;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Net;
using System.Threading.Tasks;

namespace SlaveCare.Api.Controllers.v1
{
    public class StockController : EntityController<StockAddModel, StockUpdateModel, StockPatchModel, StockGetModel, StockModel, Guid>
    {
        private readonly IStockService _service;

        public StockController(IStockService service)
            : base(service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] Stock Controller route to get stock by any parameter.
        /// </summary>
        [HttpGet("get-by-parameters")]
        [ProducesResponseType(typeof(OkResponse<StockGetModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetByParams([FromQuery] StockGetByParametersModel parameters)
        {
            return await _service.GetByParameters(parameters);
        }

        /// <summary>
        /// [Authenticated] Stock Controller route to get stock to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<StockGetModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync()
        {
            return await _service.GetToListAsync();
        }
    }
}