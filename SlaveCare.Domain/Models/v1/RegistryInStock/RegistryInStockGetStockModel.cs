using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.Stock;
using System;

namespace SlaveCare.Domain.Models.v1.RegistryInStock
{
    public class RegistryInStockGetStockModel : MtMEntityModel
    {
        public Guid StockId { get; set; }
        public StockGetModel Stock { get; set; }
    }
}
