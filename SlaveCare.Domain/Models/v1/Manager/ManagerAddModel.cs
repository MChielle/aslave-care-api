using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.SignUp;
using System;
using System.Text.Json.Serialization;

namespace SlaveCare.Domain.Models.v1.Manager
{
    public class ManagerAddModel : EntityModel<Guid>
    {
        [JsonIgnore]
        public override Guid Id { get => base.Id; set => base.Id = value; }

        public string Name { get; set; }

        public string PhotoBase64String { get; set; }

        public bool Disable { get; set; }
        public Guid StoreId { get; set; }

        [JsonIgnore]
        public Guid UserId { get; set; }

        public SignUpEmailModel SignUp { get; set; }
    }
}