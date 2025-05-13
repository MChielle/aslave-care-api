using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Enums;
using System.Collections.Generic;
using System.Linq;

namespace AslaveCare.Infra.Data.Constants.SeederDev
{
    internal static class ConstantSeederUserRole
    {
        internal static List<UserRole> MasterUserRoles() =>
            new()
            {
                new()
                {
                    UserId = ConstantSeederUser.MasterUsers()[0].Id,
                    RoleId = ConstantSeederRole.Roles.First(x => x.Type == UserType.Master).Id
                }
            };

        internal static List<UserRole> ManagerUserRoles() =>
            new()
            {
                new()
                {
                    UserId = ConstantSeederUser.ManagerUsers()[0].Id,
                    RoleId = ConstantSeederRole.Roles.First(x => x.Type == UserType.Manager).Id
                }
            };

        internal static List<UserRole> EmployeeUserRoles() =>
            new()
            {
                        new()
                        {
                            UserId = ConstantSeederUser.EmployeeUsers()[0].Id,
                            RoleId = ConstantSeederRole.Roles.First(x => x.Type == UserType.Employee).Id
                        }
            };
    }
}