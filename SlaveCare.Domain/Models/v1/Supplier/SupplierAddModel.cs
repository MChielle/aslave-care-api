using SlaveCare.Domain.Entities.Constants;
using SlaveCare.Domain.Models.Core;
using System;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace SlaveCare.Domain.Models.v1.Supplier
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