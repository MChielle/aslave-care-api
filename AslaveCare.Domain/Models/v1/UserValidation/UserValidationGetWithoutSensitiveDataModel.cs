using System;
using AslaveCare.Domain.Models.Core;

namespace AslaveCare.Domain.Models.v1.UserValidation
{
    public class UserValidationGetWithoutSensitiveDataModel : EntityModel<Guid>
    {
        public bool EmailValidated { get; set; }
        public bool PhoneNumberValidated { get; set; }
    }
}
