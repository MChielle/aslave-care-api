using SlaveCare.Domain.Entities.Constants;
using SlaveCare.Domain.Entities.Core;
using System;
using System.ComponentModel.DataAnnotations;

namespace SlaveCare.Domain.Entities
{
    public class UserValidation : Entity<Guid>
    {
        [MaxLength(PropertyLength.ConfirmationCode)]
        public string EmailConfirmationCode { get; set; }

        [MaxLength(PropertyLength.ConfirmationCode)]
        public string PhoneNumberConfirmationCode { get; set; }

        public bool EmailValidated { get; set; }
        public bool PhoneNumberValidated { get; set; }
    }
}