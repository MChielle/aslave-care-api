using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;
using System;

namespace AslaveCare.Domain.Models.v1.SignIn
{
    public class GenericUserProfileGetWithoutSensitiveDataModel : EntityModel<Guid>
    {
        public string Name { get; set; }

        public string PhotoPath { get; set; }

        public bool Disable { get; set; }

        public Guid UserId { get; set; }

        public UserGetModel User { get; set; }
    }
}