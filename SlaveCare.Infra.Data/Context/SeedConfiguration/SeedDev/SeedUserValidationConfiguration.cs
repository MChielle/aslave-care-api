using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SlaveCare.Domain.Entities;
using SlaveCare.Infra.Data.Constants.SeederDev;

namespace SlaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    internal class SeedUserValidationConfiguration : IEntityTypeConfiguration<UserValidation>
    {
        public void Configure(EntityTypeBuilder<UserValidation> builder)
        {
            builder.HasData(ConstantSeederUserValidation.MasterUserValidations());
            builder.HasData(ConstantSeederUserValidation.CustomerUserValidations());
            builder.HasData(ConstantSeederUserValidation.EmployeeUserValidations());
            builder.HasData(ConstantSeederUserValidation.ManagerUserValidations());
        }
    }
}