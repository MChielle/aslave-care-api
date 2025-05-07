using System;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;
using AslaveCare.Domain.Models.Core;

namespace AslaveCare.Domain.Models.v1.Supplier
{
    public class SupplierAddModel : EntityModel<Guid>
    {
        [JsonIgnore]
        public override Guid Id { get => base.Id; set => base.Id = value; }
        public string Name { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }
        public bool Disable { get; set; }
    }
}
