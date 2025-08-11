using System;

namespace AslaveCare.Domain.Models.v1.Stock
{
    public class StockRecountModel
    {
        public Guid Id { get; set; }
        public decimal Quantity { get; set; }
    }
}
