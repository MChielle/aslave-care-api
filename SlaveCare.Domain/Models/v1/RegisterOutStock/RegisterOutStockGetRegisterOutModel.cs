using System;
using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.RegisterIn;
using SlaveCare.Domain.Models.v1.RegisterOut;

namespace SlaveCare.Domain.Models.v1.RegisterOutStocke
{
    public class RegisterOutStockGetRegisterOutModel : MtMEntityModel
    {
        public Guid RegisterOutId { get; set; }
        public RegisterOutGetModel RegisterOut { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
    }
}