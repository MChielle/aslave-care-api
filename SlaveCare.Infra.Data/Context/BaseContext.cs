using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Entities;
using SlaveCare.Infra.Data.Context.SeedConfiguration;
using SlaveCare.Infra.Data.Context.SeedConfiguration.SeedDev;
using System.Linq;

namespace SlaveCare.Infra.Data.Context
{
    public partial class BaseContext : DbContext
    {
        public DbSet<Role> Roles { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<UserValidation> UserValidations { get; set; }
        public DbSet<UserRole> UserRoles { get; set; }
        public DbSet<Manager> Managers { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<Stock> Stocks { get; set; }
        public DbSet<RegisterIn> RegistersIn { get; set; }
        public DbSet<RegisterInStock> RegisterInStocks { get; set; }

        public BaseContext(DbContextOptions<BaseContext> options)
            : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                throw new System.Exception("Database configuration not found");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            foreach (var relationship in modelBuilder.Model.GetEntityTypes().SelectMany(e => e.GetForeignKeys()))
                relationship.DeleteBehavior = DeleteBehavior.NoAction;

            modelBuilder.Entity<UserRole>().HasKey(x => new { x.UserId, x.RoleId });

            modelBuilder.Entity<RegisterInStock>().HasKey(x => new { x.RegisterInId, x.StockId });

            OnModelCreatingPartial(modelBuilder);

            SeedDatabase(modelBuilder);
        }

        private void SeedDatabase(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new SeedRoleConfiguration());

            #region Seeder Test

            modelBuilder.ApplyConfiguration(new SeedUserConfiguration());
            modelBuilder.ApplyConfiguration(new SeedUserRoleConfiguration());
            modelBuilder.ApplyConfiguration(new SeedUserValidationConfiguration());
            modelBuilder.ApplyConfiguration(new SeedEmployeeConfiguration());
            modelBuilder.ApplyConfiguration(new SeedManagerConfiguration());

            #endregion Seeder Test
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}