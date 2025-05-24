using AslaveCare.Domain.Entities.Constants;
using AslaveCare.Domain.Entities.Core;
using System;
using System.ComponentModel.DataAnnotations;

namespace AslaveCare.Domain.Entities
{
    public class Employee : Entity<Guid>
    {
        [MaxLength(PropertyLength.FullName)]
        public string Name { get; set; }

        [MaxLength(PropertyLength.About)]
        public string About { get; set; }

        [MaxLength(PropertyLength.ImagePath)]
        public string PhotoPath { get; set; }

        public bool Disable { get; set; }

        public Guid UserId { get; set; }
        public User User { get; set; }
    }
}