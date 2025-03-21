using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Entities.Enums;
using System.Collections.Generic;
using System.Linq;

namespace SlaveCare.Infra.Data.Constants.SeederDev
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
                },
                new()
                {
                    UserId = ConstantSeederUser.MasterUsers()[1].Id,
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
                },

                new()
                {
                    UserId = ConstantSeederUser.ManagerUsers()[1].Id,
                    RoleId = ConstantSeederRole.Roles.First(x => x.Type == UserType.Manager).Id
                }
            };
    }
}