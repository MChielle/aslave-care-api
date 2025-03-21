using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.User;
using System;

namespace SlaveCare.Domain.Models.v1.Manager
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