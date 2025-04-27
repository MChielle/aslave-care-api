using SlaveCare.Domain.Models.Core;
using System;
using System.Collections.Generic;
using SlaveCare.Domain.Models.v1.RegisterInStock;

namespace SlaveCare.Domain.Models.v1.RegisterIn
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
