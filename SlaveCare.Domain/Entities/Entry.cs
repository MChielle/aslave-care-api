using SlaveCare.Domain.Entities.Core;
using System;

namespace SlaveCare.Domain.Entities
{
    public class Entry : Entity<Guid>
    {
        public Guid SupplierId { get; set; }
        public Supplier Supplier { get; set; }
        public bool Donation { get; set; }
        public DateTime Date { get; set; }
        public string Description { get; set; }
    }
}
