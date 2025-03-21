using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SlaveCare.Domain.Entities;
using SlaveCare.Infra.Data.Constants.SeederDev;

namespace SlaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    public class SeedManagerConfiguration : IEntityTypeConfiguration<Manager>
    {
        public void Configure(EntityTypeBuilder<Manager> builder)
        {
            builder.HasData(ConstantSeederManager.Managers());
        }
    }
}