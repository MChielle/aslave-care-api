using System;
using System.Text.Json.Serialization;
using AslaveCare.Domain.Models.Core;

namespace AslaveCare.Domain.Models.v1.User
{
    public class UserUpdateModel : EntityModel<Guid>
    {
        [JsonIgnore]
        public override Guid Id { get; set; }

        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string CountryId { get; set; }
        public string FireBaseCloudMessageToken { get; set; }
    }
}
