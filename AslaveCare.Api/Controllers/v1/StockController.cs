using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Net;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Api.Controllers.v1
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
        [ProducesResponseType(typeof(OkResponse<IEnumerable<StockGetModel>>), (int)HttpStatusCode.OK)]
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
        [ProducesResponseType(typeof(OkResponse<IEnumerable<StockGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync()
        {
            return await _service.GetToListAsync();
        }

        /// <summary>
        /// [Authenticated] Stock Controller route to get stock to list.
        /// </summary>
        [HttpGet("lower-stocks/{number}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<StockGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetLowerStocks(int number, CancellationToken cancellationToken)
        {
            return await _service.GetLowerStocks(number, cancellationToken);
        }

        /// <summary>
        /// [Authenticated] Stock Controller route to get stock to list.
        /// </summary>
        [HttpGet("total-stocks-quantity-warning")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<StocksQuantityWarningModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetTotalStocksQuantityWarning(CancellationToken cancellationToken)
        {
            return await _service.GetTotalStocksQuantityWarning(cancellationToken);
        }
    }
}