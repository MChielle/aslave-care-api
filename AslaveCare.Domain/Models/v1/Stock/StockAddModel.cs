using System;
using AslaveCare.Domain.Entities.Constants;
using System.ComponentModel.DataAnnotations;
using AslaveCare.Domain.Enums;
using AslaveCare.Domain.Models.Core;

namespace AslaveCare.Domain.Models.v1.Stock
{
    public class StockAddModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Quantity { get; set; }
        public bool Disable { get; set; }
        public decimal stockLowWarning { get; set; }
        public string StockTypeId { get; set; }
    }
}
