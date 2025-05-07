using System;
using System.ComponentModel.DataAnnotations;
using AslaveCare.Domain.Entities.Constants;
using AslaveCare.Domain.Entities.Core;

namespace AslaveCare.Domain.Entities
{
    public class Supplier : Entity<Guid>
    {
        [MaxLength(PropertyLength.FullName)]
        public string Name { get; set; }

        [MaxLength(PropertyLength.PhoneNumber)]
        public string PhoneNumber { get; set; }

        [MaxLength(PropertyLength.Email)]
        public string Email { get; set; }

        public bool Disable { get; set; }
    }
}
