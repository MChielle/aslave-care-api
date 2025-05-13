using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using AslaveCare.Domain.Models.v1.RegisterOutStock;
using System;
using System.Collections.Generic;

namespace AslaveCare.Domain.Models.v1.Stock
{
    public class StockGetModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Quantity { get; set; }
        public bool Disable { get; set; }
        public decimal QuantityLowWarning { get; set; }
        public string StockTypeId { get; set; }
        public List<RegisterInStockGetRegisterInModel> RegisterInStocks { get; set; }
        public List<RegisterOutStockGetRegisterOutModel> RegisterOutStocks { get; set; }
    }
}