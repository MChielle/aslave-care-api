using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.UserValidation;
using System;

namespace SlaveCare.Domain.Models.v1.User
{
    public class UserGetModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public DateTime? LastLogin { get; set; }
        public DateTime? LastPasswordChangeDate { get; set; }
        public string CountryId { get; set; }
        public Guid UserValidationId { get; set; }
        public UserValidationGetWithoutSensitiveDataModel UserValidation { get; set; }
    }
}