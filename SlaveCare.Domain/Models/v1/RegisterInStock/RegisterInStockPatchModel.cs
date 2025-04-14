using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.RegisterInStock
{
    public class RegisterInStockPatchModel : MtMEntityModel
    {
        public Guid StockId { get; set; }
        public Guid RegisterInId { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}
