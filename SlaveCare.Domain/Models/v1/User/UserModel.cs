using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.UserRole;
using SlaveCare.Domain.Models.v1.UserValidation;
using System;
using System.Collections.Generic;

namespace SlaveCare.Domain.Models.v1.User
{
    public class UserModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public byte[] Password { get; set; }
        public byte[] SocialMediaToken { get; set; }
        public string FireBaseCloudMessageToken { get; set; }
        public DateTime LastChangeDate { get; set; }
        public DateTime? LastLogin { get; set; }
        public DateTime LastPasswordChangeDate { get; set; }
        public ICollection<UserRoleModel> UserRoles { get; set; }
        public Guid UserValidationId { get; set; }
        public UserValidationModel UserValidation { get; set; }
    }
}