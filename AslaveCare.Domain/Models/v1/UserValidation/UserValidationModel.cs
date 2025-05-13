using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.UserValidation
{
    public class UserValidationModel : EntityModel<Guid>
    {
        public string EmailConfirmationCode { get; set; }
        public string PhoneNumberConfirmationCode { get; set; }
        public bool EmailValidated { get; set; }
        public bool PhoneNumberValidated { get; set; }
    }
}