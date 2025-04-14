using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.Supplier;
using System;
using System.Collections.Generic;
using SlaveCare.Domain.Models.v1.RegisterInStock;

namespace SlaveCare.Domain.Models.v1.RegisterIn
{
    public class RegisterInGetModel : EntityModel<Guid>
    {
        public int Number { get; set; }
        public Guid SupplierId { get; set; }
        public SupplierGetModel Supplier { get; set; }
        public bool Donation { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterInStockGetStockModel> RegisterInStocks { get; set; }
    }
}
