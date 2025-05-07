using System;
using System.Collections.Generic;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Core;

namespace AslaveCare.Domain.Entities
{
    public class RegisterIn : Entity<Guid>
    {
        public int Number { get; set; }
        public Guid SupplierId { get; set; }
        public Supplier Supplier { get; set; }
        public bool Donation { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterInStock> RegisterInStocks { get; set; }
    }
}
