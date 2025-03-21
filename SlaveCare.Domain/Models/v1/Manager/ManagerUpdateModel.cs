using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.User;
using System;

namespace SlaveCare.Domain.Models.v1.Manager
{
    public class ManagerUpdateModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string PhotoBase64String { get; set; }
        public bool Disable { get; set; }
        public Guid UserId { get; set; }
        public UserUpdateModel User { get; set; }
    }
}