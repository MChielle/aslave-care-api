﻿using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.Stock;
using System;

namespace AslaveCare.Domain.Models.v1.RegisterInStock
{
    public class RegisterInStockGetStockModel : MtMEntityModel
    {
        public Guid StockId { get; set; }
        public StockGetModel Stock { get; set; }
        public Guid RegisterInId { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}