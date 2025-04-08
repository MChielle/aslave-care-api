using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.RegistryInStock;
using System;
using System.Collections.Generic;

namespace SlaveCare.Domain.Models.v1.RegistryIn
{
    public class RegistryInGetByParametersModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public bool Donation { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Applied { get; set; }
        public List<RegistryInStockGetStockModel> RegistryInStocks { get; set; }
    }
}