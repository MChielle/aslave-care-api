using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SlaveCare.Domain.Entities;
using SlaveCare.Infra.Data.Constants.SeederDev;

namespace SlaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    internal class SeedUserConfiguration : IEntityTypeConfiguration<User>
    {
        public void Configure(EntityTypeBuilder<User> builder)
        {
            builder.HasData(ConstantSeederUser.MasterUsers());
            builder.HasData(ConstantSeederUser.ManagerUsers());
        }
    }
}