using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Enums;
using System.Collections.Generic;
using System.Linq;

namespace AslaveCare.Infra.Data.Constants.SeederDev
{
    public static class ConstantSeederUserRole
    {
        public static List<UserRole> MasterUserRoles() =>
            new()
            {
                new()
                {
                    UserId = ConstantSeederUser.MasterUsers()[0].Id,
                    RoleId = ConstantSeederRole.Roles.First(x => x.Type == UserType.Master).Id
                }
            };

        public static List<UserRole> ManagerUserRoles() =>
            new()
            {
                new()
                {
                    UserId = ConstantSeederUser.ManagerUsers()[0].Id,
                    RoleId = ConstantSeederRole.Roles.First(x => x.Type == UserType.Manager).Id
                }
            };

        public static List<UserRole> EmployeeUserRoles() =>
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