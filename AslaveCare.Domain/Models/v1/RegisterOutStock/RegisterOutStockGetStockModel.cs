using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.Stock;
using System;

namespace AslaveCare.Domain.Models.v1.RegisterOutStock
{
    public class RegisterOutStockGetStockModel : MtMEntityModel
    {
        public Guid RegisterOutId { get; set; }
        public Guid StockId { get; set; }
        public StockGetModel Stock { get; set; }
        public decimal Quantity { get; set; }
    }
}