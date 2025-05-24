using AslaveCare.Domain.Models.Core;
using System;
using System.Text.Json.Serialization;

namespace AslaveCare.Domain.Models.v1.User
{
    public class UserPatchModel : EntityModel<Guid>
    {
        [JsonIgnore]
        public override Guid Id { get; set; }

        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public bool Disable { get; set; }
        public string CountryId { get; set; }
        public string FireBaseCloudMessageToken { get; set; }
    }
}