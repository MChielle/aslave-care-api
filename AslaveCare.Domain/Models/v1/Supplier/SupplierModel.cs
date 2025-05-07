using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AslaveCare.Domain.Models.Core;

namespace AslaveCare.Domain.Models.v1.Supplier
{
    public class SupplierModel : EntityModel<Guid>
    {
        public string Name { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }
        public bool Disable { get; set; }
    }
}
