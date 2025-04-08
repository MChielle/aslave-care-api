using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.RegistryInStock;
using System;
using System.Collections.Generic;

namespace SlaveCare.Domain.Models.v1.RegistryIn
{
    public class RegistryInAddModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public bool Donation { get; set; }
        public string Description { get; set; }
        public bool Applied { get; set; }
        public List<RegistryInStockPatchModel> RegistryInStocks { get; set; }
    }
}