using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.RegistryInStock
{
    public class RegistryInStockPatchModel : MtMEntityModel
    {
        public Guid StockId { get; set; }
        public Guid RegistryInId { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}
