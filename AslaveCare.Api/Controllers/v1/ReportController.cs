using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Domain.Responses;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;
using System.Threading;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using System;
using AslaveCare.Domain.Models.v1.Supplier;

namespace AslaveCare.Api.Controllers.v1
{
    public class ReportController : ApplicationControllerBase
    {
        private readonly IReportService _service;
        public ReportController(IReportService service)
        {
            _service = service;
        }

        /// <summary>
        /// [Authenticated] Report Controller route to get restock report.
        /// </summary>
        [HttpGet("restock-report")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<StockGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetRestockReportAsync(CancellationToken cancellation)
        {
            return await _service.GetRestockReportAsync(cancellation);
        }

        /// <summary>
        /// [Authenticated] Report Controller route to get donation report.
        /// </summary>
        [HttpGet("donations-report/{initialDate}/{finalDate}")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<RegisterInStockGetDonationReportModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetDonationReportAsync([FromRoute] DateTime initialDate,[FromRoute] DateTime finalDate, CancellationToken cancellation)
        {
            return await _service.GetDonationsReportAsync(initialDate, finalDate, cancellation);
        }

        /// <summary>
        /// [Authenticated] Report Controller route to get month top donors report.
        /// </summary>
        [HttpGet("month-top-donors-report")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<SupplierGetDonorModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetMonthTopDonorsReportAsync(CancellationToken cancellation)
        {
            return await _service.GetMonthTopDonorsReportAsync(cancellation);
        }

        /// <summary>
        /// [Authenticated] Report Controller route to get stock report.
        /// </summary>
        [HttpGet("stock-report")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<StockGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetStockReportAsync(CancellationToken cancellation)
        {
            return await _service.GetStockReportAsync(cancellation);
        }
    }
}
