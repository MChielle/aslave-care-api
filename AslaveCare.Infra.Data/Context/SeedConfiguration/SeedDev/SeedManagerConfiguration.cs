using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants.SeederDev;

namespace AslaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    public class SeedManagerConfiguration : IEntityTypeConfiguration<Manager>
    {
        public void Configure(EntityTypeBuilder<Manager> builder)
        {
            builder.HasData(ConstantSeederManager.Managers());
        }
    }
}
