using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;
using System;

namespace AslaveCare.Domain.Models.v1.Manager
{
    public class ManagerModel : EntityModel<Guid>
    {
        public string Name { get; set; }

        public string PhotoPath { get; set; }

        public bool Disable { get; set; }
        public Guid UserId { get; set; }
        public UserModel User { get; set; }
    }
}