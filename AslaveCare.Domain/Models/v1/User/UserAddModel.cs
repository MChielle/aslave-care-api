using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.UserValidation;
using System;
using System.Text.Json.Serialization;

namespace AslaveCare.Domain.Models.v1.User
{
    public class UserAddModel : EntityModel<Guid>
    {
        [JsonIgnore]
        public override Guid Id { get => base.Id; set => base.Id = value; }

        public string Name { get; set; }

        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string AppleUserId { get; set; }
        public string Password { get; set; }
        public Guid UserValidationId { get; set; }
        public UserValidationAddModel UserValidation { get; set; }
    }
}