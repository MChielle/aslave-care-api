using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.Entry;
using System;

namespace SlaveCare.Domain.Models.v1.RegistryInStock
{
    public class RegistryInStockGetRegistryInModel : MtMEntityModel
    {
        public Guid RegistryInId { get; set; }
        public RegistryInGetModel RegistryInModel { get; set; }
    }
}
