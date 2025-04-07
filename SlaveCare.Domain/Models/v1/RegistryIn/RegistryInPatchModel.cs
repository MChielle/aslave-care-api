using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.Supplier;
using System;

namespace SlaveCare.Domain.Models.v1.Entry
{
    public class RegistryInPatchModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public bool Donation { get; set; }
        public DateTime Date { get; set; }
        public string Description { get; set; }
    }
}