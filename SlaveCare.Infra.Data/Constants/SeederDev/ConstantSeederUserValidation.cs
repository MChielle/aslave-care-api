using SlaveCare.Domain.Entities;
using System;
using System.Collections.Generic;

namespace SlaveCare.Infra.Data.Constants.SeederDev
{
    internal static class ConstantSeederUserValidation
    {
        internal static List<UserValidation> CustomerUserValidations() =>
            new()
            {
                new()
                {
                    Id = new Guid("32A103A3-7BA6-49E1-949F-64AFAB7F2D4F"),
                    EmailValidated = true,
                    PhoneNumberValidated = true,
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                }
            };

        internal static List<UserValidation> MasterUserValidations() =>
            new List<UserValidation>
            {
                new()
                {
                    Id = new Guid("F9961144-2F1E-41C4-B96C-79E62C20B21B"),
                    EmailValidated = true,
                    PhoneNumberValidated = true,
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                },
                new()
                {
                    Id = new Guid("F9961144-2F1E-41C4-B96C-79E62C20B21C"),
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
                },
                new()
                {
                    Id = new Guid("6D3DD407-D5E5-41CE-A49B-599145FE89FD"),
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
                },
                new()
                {
                    Id = new Guid("6D3DD407-D5E5-41CE-A49B-599145FE89FE"),
                    EmailValidated = true,
                    PhoneNumberValidated = true,
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                }
            };
    }
}