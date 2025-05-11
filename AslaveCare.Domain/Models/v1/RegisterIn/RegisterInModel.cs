using System;
using System.Collections.Generic;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using AslaveCare.Domain.Models.v1.Supplier;

namespace AslaveCare.Domain.Models.v1.RegisterIn
{
    public class RegisterInModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public SupplierModel Supplier { get; set; }
        public bool Donation { get; set; }
        public DateTime? ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterInStockGetStockModel> RegisterInStocks { get; set; }
    }
}
