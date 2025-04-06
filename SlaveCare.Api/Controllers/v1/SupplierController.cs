using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.SignIn;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses;
using System;
using System.Net;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SlaveCare.Api.Controllers.v1
{
    public class SupplierController : EntityController<SupplierAddModel, SupplierUpdateModel, SupplierPatchModel, SupplierGetModel, SupplierModel, Guid>
    {
        private readonly ISupplierService _supplierService;
        public SupplierController(ISupplierService supplierService)
            : base(supplierService)
        {
            _supplierService = supplierService;
        }

        /// <summary>
        /// [Authenticated] Supplier Controller route to get Supplier by email.
        /// </summary>
        /// <param name="email">email</param>
        [HttpGet("{email}/get-by-email")]
        [ProducesResponseType(typeof(OkResponse<SupplierGetModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetByEmailAsync([FromRoute][Required] string email)
        {
            return await _supplierService.GetByEmailAsync(email);
        }

        /// <summary>
        /// [Authenticated] Supplier Controller route to get Supplier by any parameter.
        /// </summary>
        [HttpGet("get-by-parameters")]
        [ProducesResponseType(typeof(OkResponse<SupplierGetModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetByParams([FromQuery] SupplierGetByParametersModel parameters)
        {
            return await _supplierService.GetByParameters(parameters);
        }

        /// <summary>
        /// [Authenticated] Supplier Controller route to get suppliers to list.
        /// </summary>
        [HttpGet("to-list")]
        [ProducesResponseType(typeof(OkResponse<SupplierGetModel>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync()
        {
            return await _supplierService.GetToListAsync();
        }
    }
}