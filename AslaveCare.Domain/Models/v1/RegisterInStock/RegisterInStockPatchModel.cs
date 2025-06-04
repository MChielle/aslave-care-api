using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.RegisterInStock
{
    public class RegisterInStockPatchModel : MtMEntityModel
    {
        public Guid RegisterInId { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}