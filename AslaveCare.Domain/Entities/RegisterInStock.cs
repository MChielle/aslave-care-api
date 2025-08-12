using AslaveCare.Domain.Entities.Constants;
using AslaveCare.Domain.Entities.Core;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace AslaveCare.Domain.Entities
{
    public class RegisterInStock : EntityMtM
    {
        public Guid RegisterInId { get; set; }
        public RegisterIn RegisterIn { get; set; }
        public Guid StockId { get; set; }
        public Stock Stock { get; set; }

        [Column(TypeName = PropertyType.Decimal_8_3)]
        public decimal Quantity { get; set; }

        [Column(TypeName = PropertyType.Decimal_8_3)]
        public decimal Price { get; set; }

        public override bool Equals(object obj)
        {
            if (obj == null) return false;
            if (!(obj is RegisterInStock)) return false;
            var ps = obj as RegisterInStock;
            return (this.RegisterInId == ps.StockId) && (this.RegisterInId == ps.StockId);
        }

        public override int GetHashCode()
        {
            return this.RegisterInId.GetHashCode() + this.StockId.GetHashCode() + 765;
        }
    }
}