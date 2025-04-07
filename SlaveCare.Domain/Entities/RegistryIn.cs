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
        public DateTime Date { get; set; }
        public string Description { get; set; }
        //TODO: adicionar propriedade para controlar se o saldo foi aplicado.
        public List<RegistryInStock> StockRegistryIns { get; set; }
    }
}