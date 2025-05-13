using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants.SeederDev;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AslaveCare.Infra.Data.Context.SeedConfiguration.SeedDev
{
    public class SeedEmployeeConfiguration : IEntityTypeConfiguration<Employee>
    {
        public void Configure(EntityTypeBuilder<Employee> builder)
        {
            builder.HasData(ConstantSeederEmployee.Employees());
        }
    }
}