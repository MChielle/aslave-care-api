using AslaveCare.Domain.Entities.Constants;
using AslaveCare.Domain.Entities.Core;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

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