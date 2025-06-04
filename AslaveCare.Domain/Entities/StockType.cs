using AslaveCare.Domain.Entities.Constants;
using AslaveCare.Domain.Entities.Core;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace AslaveCare.Domain.Entities
{
    public class StockType : Entity<string>
    {
        [MaxLength(PropertyLength.GenericShortName)]
        public override string Id { get => base.Id; set => base.Id = value; }

        public List<Stock> Stocks { get; set; }
    }
}