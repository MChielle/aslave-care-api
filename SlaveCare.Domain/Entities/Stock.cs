using SlaveCare.Domain.Entities.Constants;
using SlaveCare.Domain.Entities.Core;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SlaveCare.Domain.Entities
{
    public class Stock : Entity<Guid>
    {
        [MaxLength(PropertyLength.FullName)]
        public string Name { get; set; }

        [MaxLength(PropertyLength.Description)]
        public string Description { get; set; }

        [Column(TypeName = PropertyType.Decimal_8_2)]
        public decimal Quantity { get; set; }

        public bool Disable { get; set; }

        public List<RegisterInStock> RegisterInStocks { get; set; }

    }
}