using SlaveCare.Domain.Models.Core;
using System;
using SlaveCare.Domain.Models.v1.RegistryIn;

namespace SlaveCare.Domain.Models.v1.RegistryInStock
{
    public class RegistryInStockGetRegistryInModel : MtMEntityModel
    {
        public Guid RegistryInId { get; set; }
        public RegistryInGetModel RegistryIn { get; set; }
        public decimal Quantity { get; set; }
        public decimal Price { get; set; }
    }
}
