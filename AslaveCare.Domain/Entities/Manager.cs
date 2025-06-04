using AslaveCare.Domain.Entities.Constants;
using AslaveCare.Domain.Entities.Core;
using System;
using System.ComponentModel.DataAnnotations;

namespace AslaveCare.Domain.Entities
{
    public class Manager : Entity<Guid>
    {
        [MaxLength(PropertyLength.ImagePath)]
        public string PhotoPath { get; set; }
        public Guid UserId { get; set; }
        public User User { get; set; }
    }
}