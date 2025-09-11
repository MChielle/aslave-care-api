using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Helpers;
using AslaveCare.Infra.Data.Context;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace AslaveCare.IntegrationTests.Configuration
{
    public class WebHostApplicationFactory<TStartup> : WebApplicationFactory<TStartup> where TStartup : class
    {
        //For Sqlite
        //private string connectionString = "Data Source=database.dat";

        protected override IWebHostBuilder CreateWebHostBuilder()
        {
            BuildEnvironment.SetEnvironment(EnvironmentType.Test);

            return WebHost.CreateDefaultBuilder()
                          .UseEnvironment(EnvironmentType.Test.GetDescription())
                          .UseStartup<TestStartup>();
        }

        protected override void ConfigureWebHost(IWebHostBuilder builder)
        {
            builder.ConfigureServices(services =>
            {
                services.AddDbContext<BaseContext>(options =>
                {
                    options.UseInMemoryDatabase("inMemoryDatabase");
                });

                //For Sqlite
                //services.AddEntityFrameworkSqlite()
                //    .AddDbContext<BaseContext>(options =>
                //    {
                //        options.UseSqlite(connectionString);

                //        options.UseInternalServiceProvider(services.BuildServiceProvider());
                //    });
            });
        }

        protected override void Dispose(bool disposing)
        {
            using (var scope = Services.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<BaseContext>();
                //For Sqlite
                //context.Database.CloseConnection();
                context.Database.EnsureDeleted();
                //See about base Dispose: https://learn.microsoft.com/en-us/dotnet/api/system.idisposable.dispose?view=net-8.0
            }
        }
    }
}
