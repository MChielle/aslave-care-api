using System.ComponentModel;

namespace SlaveCare.Domain.Entities.Enums
{
    public enum UserType
    {
        [Description(SlaveCare.Domain.Entities.Constants.UserType.Master)]
        Master = 0,

        [Description(SlaveCare.Domain.Entities.Constants.UserType.Manager)]
        Manager = 1,
    }
}