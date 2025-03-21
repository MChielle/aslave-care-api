using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.UserRole;
using System;
using System.Collections.Generic;

namespace SlaveCare.Domain.Models.v1.Role
{
    public class RoleModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public UserType UserType { get; set; }
        public ICollection<UserRoleModel> UserRoles { get; set; }
    }
}