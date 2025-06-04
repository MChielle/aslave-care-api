using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AslaveCare.Infra.Data.Context.SeedConfiguration
{
    public class SeedStockConfiguration : IEntityTypeConfiguration<Stock>
    {
        public void Configure(EntityTypeBuilder<Stock> builder)
        {
            builder.HasData(ConstantStockSeeder.Stocks());
        }
    }
}