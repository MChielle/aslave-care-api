using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.RegistryInStock
{
    public class RegistryInStockModel : MtMEntityModel
    {
        public Guid RegistryInId { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}