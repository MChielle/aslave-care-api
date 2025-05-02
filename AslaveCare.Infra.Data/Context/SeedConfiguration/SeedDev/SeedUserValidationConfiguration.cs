using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants.SeederDev;

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
