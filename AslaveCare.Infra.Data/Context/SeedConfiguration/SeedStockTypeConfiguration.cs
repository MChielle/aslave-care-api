using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AslaveCare.Infra.Data.Context.SeedConfiguration
{
    public class SeedStockTypeConfiguration : IEntityTypeConfiguration<StockType>
    {
        public void Configure(EntityTypeBuilder<StockType> builder)
        {
            builder.HasData(ConstantStockTypeSeeder.StockTypes());
        }
    }
}