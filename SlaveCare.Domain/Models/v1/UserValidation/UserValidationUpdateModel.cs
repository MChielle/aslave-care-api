using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.UserValidation
{
    public class UserValidationUpdateModel : EntityModel<Guid>
    {
        public string EmailConfirmationCode { get; set; }
        public string PhoneNumberConfirmationCode { get; set; }
        public bool EmailValidated { get; set; }
        public bool PhoneNumberValidated { get; set; }
    }
}