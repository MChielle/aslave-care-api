using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Constants;
using AslaveCare.Domain.Entities.Core;

namespace AslaveCare.Domain.Entities
{
    public class Role : Entity<Guid>
    {
        [MaxLength(PropertyLength.GenericName)]
        public string Name { get; set; }
        public Enums.UserType UserType { get; set; }
        public ICollection<UserRole> UserRoles { get; set; }
    }
}
