using System;
using System.Collections.Generic;
using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.RegisterOutStocke;

namespace SlaveCare.Domain.Models.v1.RegisterOut
{
    public class RegisterOutAddModel : EntityModel<Guid>
    {
        public int Number { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterOutStockPatchModel> RegisterOutStocks { get; set; }
    }
}