using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.Stock.GetHistoryReport
{
    public class StockGetRegisterHistoryReportModel : EntityModel<Guid>
    {
        public string RegisterType { get; set; }
        public int RegisterNumber { get; set; }
        public DateTime RegisterApplyDate { get; set; }
        public decimal Quantity { get; set; }
    }
}