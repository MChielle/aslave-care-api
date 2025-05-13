using AslaveCare.Domain.Models.v1.UserValidation;
using System;

namespace AslaveCare.Domain.Models.v1.User
{
    public class UserSignInModel
    {
        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public DateTime? LastLogin { get; set; }
        public DateTime? LastPasswordChangeDate { get; set; }
        public UserValidationGetWithoutSensitiveDataModel UserValidation { get; set; }
    }
}