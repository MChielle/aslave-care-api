using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.Entry;
using SlaveCare.Domain.Models.v1.Stock;
using System;

namespace SlaveCare.Domain.Models.v1.RegistryInStock
{
    public class RegistryInStockModel : MtMEntityModel
    {
        public Guid RegistryInId { get; set; }
        public RegistryInModel RegistryIn { get; set; }
        public Guid StockId { get; set; }
        public StockModel Stock { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}
