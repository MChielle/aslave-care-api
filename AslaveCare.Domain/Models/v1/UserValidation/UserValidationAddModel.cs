using System;
using AslaveCare.Domain.Models.Core;

namespace AslaveCare.Domain.Models.v1.UserValidation
{
    public class UserValidationAddModel : EntityModel<Guid>
    {
        public string EmailConfirmationCode { get; set; }
        public string PhoneNumberConfirmationCode { get; set; }
        public bool EmailValidated { get; set; }
        public bool PhoneNumberValidated { get; set; }
        public DateTime CreationDate { get; set; }
    }
}
