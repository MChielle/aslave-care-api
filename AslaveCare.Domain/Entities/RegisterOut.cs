using AslaveCare.Domain.Entities.Core;
using System;
using System.Collections.Generic;

namespace AslaveCare.Domain.Entities
{
    public class RegisterOut : Entity<Guid>
    {
        public int Number { get; set; }
        public DateTime? ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterOutStock> RegisterOutStocks { get; set; }
    }
}