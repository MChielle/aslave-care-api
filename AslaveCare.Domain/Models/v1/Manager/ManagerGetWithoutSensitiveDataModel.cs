using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;
using System;

namespace AslaveCare.Domain.Models.v1.Manager
{
    public class ManagerGetWithoutSensitiveDataModel : EntityModel<Guid>
    {
        public string PhotoPath { get; set; }

        public Guid UserId { get; set; }
        public UserGetModel User { get; set; }
    }
}