using SlaveCare.Domain.Entities.Core;
using System;
using System.Collections.Generic;

namespace SlaveCare.Domain.Entities
{
    public class RegistryIn : Entity<Guid>
    {
        public Guid SupplierId { get; set; }
        public Supplier Supplier { get; set; }
        public bool Donation { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Applied { get; set; }
        public List<RegistryInStock> RegistryInStocks { get; set; }
    }
}