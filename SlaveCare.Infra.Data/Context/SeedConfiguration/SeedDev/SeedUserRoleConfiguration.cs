using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SlaveCare.Domain.Entities;
using SlaveCare.Infra.Data.Constants.SeederDev;

namespace SlaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    internal class SeedUserRoleConfiguration : IEntityTypeConfiguration<UserRole>
    {
        public void Configure(EntityTypeBuilder<UserRole> builder)
        {
            builder.HasData(ConstantSeederUserRole.MasterUserRoles());
        }
    }
}