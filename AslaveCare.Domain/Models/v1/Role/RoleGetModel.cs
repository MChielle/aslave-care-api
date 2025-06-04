using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.Role
{
    public class RoleGetModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public UserType UserType { get; set; }
    }
}