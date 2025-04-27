using System;
using System.ComponentModel.DataAnnotations.Schema;
using SlaveCare.Domain.Entities.Constants;
using SlaveCare.Domain.Entities.Core;

namespace SlaveCare.Domain.Entities
{
    public class RegisterOutStock : EntityMtM
    {
        public Guid RegisterOutId { get; set; }
        public RegisterOut RegisterOut { get; set; }
        public Guid StockId { get; set; }
        public Stock Stock { get; set; }

        [Column(TypeName = PropertyType.Decimal_8_2)]
        public decimal Quantity { get; set; }

        public override bool Equals(object obj)
        {
            if (obj == null) return false;
            if (!(obj is RegisterOutStock)) return false;
            var ps = obj as RegisterOutStock;
            return (this.RegisterOutId == ps.StockId) && (this.RegisterOutId == ps.StockId);
        }

        public override int GetHashCode()
        {
            return this.RegisterOutId.GetHashCode() + this.StockId.GetHashCode() + 765;
        }
    }
}