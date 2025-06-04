using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.UserRole;
using System;
using System.Collections.Generic;

namespace AslaveCare.Domain.Models.v1.Role
{
    public class RoleAddModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public UserType UserType { get; set; }
        public ICollection<UserRoleModel> UserRoles { get; set; }
    }
}