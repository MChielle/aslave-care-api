using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants.SeederDev;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

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