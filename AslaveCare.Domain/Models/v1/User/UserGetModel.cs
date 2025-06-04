using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.UserRole;
using AslaveCare.Domain.Models.v1.UserValidation;
using System;
using System.Collections.Generic;

namespace AslaveCare.Domain.Models.v1.User
{
    public class UserGetModel : EntityModel<Guid>
    {
        public string Name { get; set; }

        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public bool Disable { get; set; }
        public DateTime? LastLogin { get; set; }
        public DateTime? LastPasswordChangeDate { get; set; }
        public string CountryId { get; set; }
        public Guid UserValidationId { get; set; }
        public ICollection<UserRoleGetRoleModel> UserRoles { get; set; }
        public UserValidationGetWithoutSensitiveDataModel UserValidation { get; set; }
    }
}