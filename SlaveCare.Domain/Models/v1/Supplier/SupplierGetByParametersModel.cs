using System;

namespace SlaveCare.Domain.Models.v1.Supplier
{
    public class SupplierGetByParametersModel
    {
        public Guid? Id { get; set; }
        public string Name { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }

        public bool? Disable { get; set; }
    }
}