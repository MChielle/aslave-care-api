using SlaveCare.Domain.Entities.Constants;
using SlaveCare.Domain.Entities.Core;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace SlaveCare.Domain.Entities
{
    public class User : Entity<Guid>
    {
        [MaxLength(PropertyLength.FullName)]
        public string Name { get; set; }

        [MaxLength(PropertyLength.PhoneNumber)]
        public string PhoneNumber { get; set; }

        [MaxLength(PropertyLength.Email)]
        public string Email { get; set; }

        [AllowNull]
        public byte[] Password { get; set; }

        [AllowNull]
        public DateTime? LastLogin { get; set; }

        [AllowNull]
        public string AppleUserId { get; set; }

        [AllowNull]
        public DateTime? LastPasswordChangeDate { get; set; }

        public ICollection<UserRole> UserRoles { get; set; }

        public Guid UserValidationId { get; set; }
        public UserValidation UserValidation { get; set; }
        public string FireBaseCloudMessageToken { get; set; }
    }
}