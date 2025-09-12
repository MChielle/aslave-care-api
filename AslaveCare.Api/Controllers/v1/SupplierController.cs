using AslaveCare.Api.Controllers.Base;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Models.v1.Supplier;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Net;
using System.Threading.Tasks;

namespace AslaveCare.Api.Controllers.v1
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

        ///TODO: criar rotas especificas
        /// <summary>
        /// [Authenticated] Supplier Controller route to get Supplier by any parameter.
        /// </summary>
        [AllowAnonymous]
        [HttpGet("get-by-parameters")]
        [ProducesResponseType(typeof(OkResponse<IEnumerable<SupplierGetModel>>), (int)HttpStatusCode.OK)]
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
        [ProducesResponseType(typeof(OkResponse<IEnumerable<SupplierGetModel>>), (int)HttpStatusCode.OK)]
        [ProducesResponseType(typeof(UnauthorizedResponse), (int)HttpStatusCode.Unauthorized)]
        [ProducesResponseType(typeof(NoContentResponse), (int)HttpStatusCode.NoContent)]
        [ProducesResponseType(typeof(BadRequestResponse), (int)HttpStatusCode.BadRequest)]
        [ProducesResponseType(typeof(object), (int)HttpStatusCode.InternalServerError)]
        public async Task<IResponseBase> GetToListAsync()
        {
            return await _supplierService.GetToListAsync();
        }

        ///TODO: criar rotas especificas
        [AllowAnonymous]
        public override Task<IResponseBase> Post([FromBody] SupplierAddModel model)
        {
            return base.Post(model);
        }
    }
}