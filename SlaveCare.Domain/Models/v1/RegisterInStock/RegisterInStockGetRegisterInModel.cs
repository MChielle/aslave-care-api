using SlaveCare.Domain.Models.Core;
using System;
using SlaveCare.Domain.Models.v1.RegisterIn;

namespace SlaveCare.Domain.Models.v1.RegisterInStock
{
    public class RegisterInStockGetRegisterInModel : MtMEntityModel
    {
        public Guid RegisterInId { get; set; }
        public RegisterInGetModel RegisterIn { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}
