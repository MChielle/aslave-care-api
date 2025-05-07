using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants.SeederDev;

namespace AslaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    internal class SeedUserConfiguration : IEntityTypeConfiguration<User>
    {
        public void Configure(EntityTypeBuilder<User> builder)
        {
            builder.HasData(ConstantSeederUser.MasterUsers());
            builder.HasData(ConstantSeederUser.ManagerUsers());
            builder.HasData(ConstantSeederUser.EmployeeUsers());
        }
    }
}
