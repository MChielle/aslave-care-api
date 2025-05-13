using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.RegisterOut;
using System;

namespace AslaveCare.Domain.Models.v1.RegisterOutStock
{
    public class RegisterOutStockGetRegisterOutModel : MtMEntityModel
    {
        public Guid RegisterOutId { get; set; }
        public RegisterOutGetModel RegisterOut { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
    }
}