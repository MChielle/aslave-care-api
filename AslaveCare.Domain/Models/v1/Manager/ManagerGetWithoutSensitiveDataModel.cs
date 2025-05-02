using System;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;

namespace AslaveCare.Domain.Models.v1.Manager
{
    public class ManagerGetWithoutSensitiveDataModel : EntityModel<Guid>
    {
        public string Name { get; set; }

        public string PhotoPath { get; set; }

        public bool Disable { get; set; }
        public Guid UserId { get; set; }
        public UserGetModel User { get; set; }
    }
}
