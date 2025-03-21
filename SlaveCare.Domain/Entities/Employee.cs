using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Entities.Constants;
using SlaveCare.Domain.Entities.Core;
using System;
using System.ComponentModel.DataAnnotations;

namespace Appointment.Domain.Entities
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

        public decimal SplitPercentage { get; set; }
        public Guid UserId { get; set; }
        public User User { get; set; }
    }
}