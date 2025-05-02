using System;
using AslaveCare.Domain.Models.Core;

namespace AslaveCare.Domain.Models.v1.Supplier
{
    public class SupplierUpdateModel : EntityModel<Guid>
    {
        public string Name { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }

        public bool Disable { get; set; }
    }
}
