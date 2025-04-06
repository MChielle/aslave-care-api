using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.Stock
{
    public class StockModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Quantity { get; set; }
        public bool Disable { get; set; }
    }
}