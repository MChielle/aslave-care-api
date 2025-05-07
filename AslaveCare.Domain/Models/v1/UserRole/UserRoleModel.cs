using System;
using AslaveCare.Domain.Models.v1.Role;
using AslaveCare.Domain.Models.v1.User;

namespace AslaveCare.Domain.Models.v1.UserRole
{
    public class UserRoleModel
    {
        public UserModel User { get; set; }

        public Guid UserId { get; set; }

        public RoleModel Role { get; set; }

        public Guid RoleId { get; set; }
    }
}
