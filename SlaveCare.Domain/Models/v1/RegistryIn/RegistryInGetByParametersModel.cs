using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.Entry
{
    public class RegistryInGetByParametersModel : EntityModel<Guid>
    {
        public Guid SupplierId { get; set; }
        public bool Donation { get; set; }
        public DateTime Date { get; set; }
        public string Description { get; set; }
    }
}