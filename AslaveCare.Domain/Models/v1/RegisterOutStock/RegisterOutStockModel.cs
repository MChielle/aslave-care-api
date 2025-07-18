﻿using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.RegisterOutStock
{
    public class RegisterOutStockModel : MtMEntityModel
    {
        public Guid RegisterOutId { get; set; }
        public Guid StockId { get; set; }
        public decimal Quantity { get; set; }
    }
}