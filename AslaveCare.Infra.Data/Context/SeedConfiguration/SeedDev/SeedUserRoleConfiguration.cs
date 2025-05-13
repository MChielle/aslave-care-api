using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants.SeederDev;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AslaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    internal class SeedUserRoleConfiguration : IEntityTypeConfiguration<UserRole>
    {
        public void Configure(EntityTypeBuilder<UserRole> builder)
        {
            builder.HasData(ConstantSeederUserRole.MasterUserRoles());
            builder.HasData(ConstantSeederUserRole.ManagerUserRoles());
            builder.HasData(ConstantSeederUserRole.EmployeeUserRoles());
        }
    }
}