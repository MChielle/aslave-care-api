using System;
using System.Collections.Generic;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.RegisterInStock;

namespace AslaveCare.Domain.Models.v1.RegisterIn
{
    public class RegisterInAddModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public bool Donation { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterInStockPatchModel> RegisterInStocks { get; set; }
    }
}
