using AslaveCare.Domain.Models.v1.Role;
using System;

namespace AslaveCare.Domain.Models.v1.UserRole
{
    public class UserRoleGetRoleModel
    {
        public Guid UserId { get; set; }

        public RoleGetModel Role { get; set; }

        public Guid RoleId { get; set; }
    }
}