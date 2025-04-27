using System.ComponentModel;

namespace SlaveCare.Domain.Entities.Enums
{
    public enum UserType
    {
        [Description(Constants.UserType.Master)]
        Master = 0,

        [Description(Constants.UserType.Manager)]
        Manager = 1,

        [Description(Constants.UserType.Employee)]
        Employee = 2,
    }
}