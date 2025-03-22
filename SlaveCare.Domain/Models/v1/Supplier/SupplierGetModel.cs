using SlaveCare.Domain.Models.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Models.v1.Supplier
{
    public class SupplierGetModel : EntityModel<Guid>
    {
        public string Name { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }
    }
}
