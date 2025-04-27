using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using SlaveCare.Domain.Entities;
using SlaveCare.Infra.Data.Constants.SeederDev;

namespace SlaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    public class SeedEmployeeConfiguration : IEntityTypeConfiguration<Employee>
    {
        public void Configure(EntityTypeBuilder<Employee> builder)
        {
            builder.HasData(ConstantSeederEmployee.Employees());
        }
    }
}