using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants.SeederDev;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AslaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    internal class SeedUserValidationConfiguration : IEntityTypeConfiguration<UserValidation>
    {
        public void Configure(EntityTypeBuilder<UserValidation> builder)
        {
            builder.HasData(ConstantSeederUserValidation.MasterUserValidations());
            builder.HasData(ConstantSeederUserValidation.ManagerUserValidations());
            builder.HasData(ConstantSeederUserValidation.EmployeeUserValidations());
        }
    }
}