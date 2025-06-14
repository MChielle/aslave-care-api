using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.User
{
    public class UserUpdateByMasterModel : EntityModel<Guid>
    {
        public bool Disable { get; set; }
        public string Password { get; set; }
    }
}