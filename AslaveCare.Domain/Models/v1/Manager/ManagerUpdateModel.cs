using System;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;

namespace AslaveCare.Domain.Models.v1.Manager
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
