using AslaveCare.Domain.Entities.Constants;
using AslaveCare.Domain.Entities.Core;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AslaveCare.Domain.Entities
{
    public class Stock : Entity<Guid>
    {
        [MaxLength(PropertyLength.FullName)]
        public string Name { get; set; }

        [MaxLength(PropertyLength.Description)]
        public string Description { get; set; }

        [Column(TypeName = PropertyType.Decimal_8_3)]
        public decimal Quantity { get; set; }

        public bool Disable { get; set; }

        [Column(TypeName = PropertyType.Decimal_8_3)]
        public decimal QuantityLowWarning { get; set; }

        [MaxLength(PropertyLength.GenericShortName)]
        public string StockTypeId { get; set; }

        public List<RegisterInStock> RegisterInStocks { get; set; }

        public List<RegisterOutStock> RegisterOutStocks { get; set; }
    }
}