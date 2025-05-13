using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.RegisterIn;
using System;

namespace AslaveCare.Domain.Models.v1.RegisterInStock
{
    public class RegisterInStockGetRegisterInRestockReportModel : MtMEntityModel
    {
        public Guid RegisterInId { get; set; }
        public RegisterInGetRestockReportModel RegisterIn { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}
