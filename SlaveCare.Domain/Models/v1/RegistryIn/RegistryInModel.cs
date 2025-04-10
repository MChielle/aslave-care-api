using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.RegistryInStock;
using SlaveCare.Domain.Models.v1.Supplier;
using System;
using System.Collections.Generic;

namespace SlaveCare.Domain.Models.v1.RegistryIn
{
    public class RegistryInModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public SupplierModel Supplier { get; set; }
        public bool Donation { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegistryInStockGetStockModel> RegistryInStocks { get; set; }
    }
}