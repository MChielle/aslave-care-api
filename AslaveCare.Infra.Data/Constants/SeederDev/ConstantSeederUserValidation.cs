using AslaveCare.Domain.Entities;
using System;
using System.Collections.Generic;

namespace AslaveCare.Infra.Data.Constants.SeederDev
{
    internal static class ConstantSeederUserValidation
    {
        internal static List<UserValidation> MasterUserValidations() =>
            new List<UserValidation>
            {
                new()
                {
                    Id = new Guid("F9961144-2F1E-41C4-B96C-79E62C20B21B"),
                    EmailValidated = true,
                    PhoneNumberValidated = true,
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                }
            };

        internal static List<UserValidation> ManagerUserValidations() =>
            new List<UserValidation>
            {
                new()
                {
                    Id = new Guid("6D3DD407-D5E5-41CE-A49B-599145FE89FC"),
                    EmailValidated = true,
                    PhoneNumberValidated = true,
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                }
            };

        internal static List<UserValidation> EmployeeUserValidations() =>
            new()
            {
                new()
                {
                    Id = new Guid("6D3DD407-D5E5-41CE-A49B-599145FE89FA"),
                    EmailValidated = true,
                    PhoneNumberValidated = true,
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                }
            };
    }
}