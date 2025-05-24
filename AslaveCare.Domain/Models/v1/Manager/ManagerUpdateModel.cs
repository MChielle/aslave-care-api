using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;
using System;

namespace AslaveCare.Domain.Models.v1.Manager
{
    public class ManagerUpdateModel : EntityModel<Guid>
    {
        public string PhotoBase64String { get; set; }
        public Guid UserId { get; set; }
        public UserUpdateModel User { get; set; }
    }
}