using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.RegisterInStock
{
    public class RegisterInStockGetDonationReportModel
    {
        public string StockName { get; set; }
        public string StockTypeId { get; set; }
        public decimal Quantity { get; set; }
    }
}