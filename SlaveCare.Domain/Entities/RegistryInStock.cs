using SlaveCare.Domain.Entities.Constants;
using SlaveCare.Domain.Entities.Core;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace SlaveCare.Domain.Entities
{
    public class RegistryInStock : EntityMtM
    {
        public Guid RegistryInId { get; set; }
        public RegistryIn RegistryIn { get; set; }
        public Guid StockId { get; set; }
        public Stock Stock { get; set; }
        
        [Column(TypeName = PropertyType.Decimal_8_2)]
        public decimal Quantity { get; set; }

        [Column(TypeName = PropertyType.Decimal_8_2)]
        public decimal Price { get; set; }

        public override bool Equals(object obj)
        {
            if (obj == null) return false;
            if (!(obj is RegistryInStock)) return false;
            var ps = obj as RegistryInStock;
            return (this.RegistryInId == ps.StockId) && (this.RegistryInId == ps.StockId);
        }

        public override int GetHashCode()
        {
            return this.RegistryInId.GetHashCode() + this.StockId.GetHashCode() + 765;
        }
    }
}