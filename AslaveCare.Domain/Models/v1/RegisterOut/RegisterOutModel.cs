using System;
using System.Collections.Generic;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.RegisterOutStock;

namespace AslaveCare.Domain.Models.v1.RegisterOut
{
    public class RegisterOutModel : EntityModel<Guid>
    {
        public int Number { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterOutStockGetStockModel> RegisterOutStocks { get; set; }
    }
}
