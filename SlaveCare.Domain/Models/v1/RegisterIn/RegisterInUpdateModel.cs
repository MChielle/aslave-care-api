using SlaveCare.Domain.Models.Core;
using System;
using System.Collections.Generic;
using SlaveCare.Domain.Models.v1.RegisterInStock;

namespace SlaveCare.Domain.Models.v1.RegisterIn
{
    public class RegisterInUpdateModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public bool Donation { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterInStockGetStockModel> RegisterInStocks { get; set; }
    }
}
