using Appointment.Domain.Entities;
using Appointment.Infra.Data.Constants.SeederDev;
using SlaveCare.Infra.Data.Constants;
using SlaveCare.Infra.Data.Constants.SeederDev;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Appointment.Infra.Data.Constants.SeederDev
{
    internal static class ConstantSeederEmployee
    {
        internal static List<Employee> Employees() =>
            new()
            {
                new()
                {
                    Id = new Guid("71C45363-20E5-4F70-BE43-3B46452CD7A0"),
                    UserId = ConstantSeederUser.EmployeeUsers().First(x => x.Name == "Matheus").Id,
                    About = "Dev",
                    Name = "Matheus",
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                }
            };
    }
}
