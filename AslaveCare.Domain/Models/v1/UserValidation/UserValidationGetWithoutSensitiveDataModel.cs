using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.UserValidation
{
    public class UserValidationGetWithoutSensitiveDataModel : EntityModel<Guid>
    {
        public bool EmailValidated { get; set; }
        public bool PhoneNumberValidated { get; set; }
    }
}