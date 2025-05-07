using System;
using System.Collections.Generic;
using System.Linq;
using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants;
using AslaveCare.Infra.Data.Constants.SeederDev;

namespace AslaveCare.Infra.Data.Constants.SeederDev
{
    internal static class ConstantSeederManager
    {
        internal static List<Manager> Managers() =>
            new()
            {
                new()
                {
                    Id = new Guid("71C45363-20E5-4F70-BE43-3B46452CD7A0"),
                    UserId = ConstantSeederUser.ManagerUsers().First(x => x.Email == "matheuschielle+manager@gmail.com").Id,
                    Name = "Matheus",
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                },
            };
    }
}
