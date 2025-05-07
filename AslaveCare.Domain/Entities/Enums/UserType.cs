using System.ComponentModel;

namespace AslaveCare.Domain.Entities.Enums
{
    public enum UserType
    {
        [Description(AslaveCare.Domain.Entities.Constants.UserType.Master)]
        Master = 0,

        [Description(AslaveCare.Domain.Entities.Constants.UserType.Manager)]
        Manager = 1,

        [Description(AslaveCare.Domain.Entities.Constants.UserType.Employee)]
        Employee = 2,
    }
}
