using System;
using SlaveCare.Domain.Models.Core;

namespace SlaveCare.Domain.Models.v1.RegisterOutStocke
{
    public class RegisterOutStockPatchModel: MtMEntityModel
    {
        public Guid RegisterOutId { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
    }
}