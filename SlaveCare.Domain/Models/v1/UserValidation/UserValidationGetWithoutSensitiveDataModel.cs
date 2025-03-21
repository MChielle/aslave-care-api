using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.UserValidation
{
    public class UserValidationGetWithoutSensitiveDataModel : EntityModel<Guid>
    {
        public bool EmailValidated { get; set; }
        public bool PhoneNumberValidated { get; set; }
    }
}