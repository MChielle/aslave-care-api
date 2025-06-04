using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using System;
using System.Collections.Generic;

namespace AslaveCare.Domain.Models.v1.RegisterIn
{
    public class RegisterInUpdateModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public bool Donation { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterInStockPatchModel> RegisterInStocks { get; set; }
    }
}