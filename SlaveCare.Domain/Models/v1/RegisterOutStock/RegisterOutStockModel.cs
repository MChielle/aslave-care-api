using System;
using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.RegisterOut;
using SlaveCare.Domain.Models.v1.Stock;

namespace SlaveCare.Domain.Models.v1.RegisterOutStocke
{
    public class RegisterOutStockModel : MtMEntityModel
    {
        public Guid RegisterOutId { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
    }
}