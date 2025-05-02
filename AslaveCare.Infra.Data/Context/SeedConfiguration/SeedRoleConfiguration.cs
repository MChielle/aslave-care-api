using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Constants;

namespace AslaveCare.Infra.Data.Context.SeedConfiguration
{
    public class SeedRoleConfiguration : IEntityTypeConfiguration<Role>
    {
        public void Configure(EntityTypeBuilder<Role> builder)
        {
            foreach (var item in ConstantSeederRole.Roles)
            {
                var role = new Role
                {
                    Id = item.Id,
                    Name = item.Name,
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                    DeletionDate = null,
                    LastChangeDate = null
                };

                builder.HasData(role);
            }
        }
    }
}
