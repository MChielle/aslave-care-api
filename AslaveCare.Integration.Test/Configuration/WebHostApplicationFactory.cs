using AslaveCare.Domain.Extensions;
using AslaveCare.Infra.Data.Context;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace AslaveCare.Integration.Test.Configuration
{
    public class WebHostApplicationFactory<TStartup> : WebApplicationFactory<TStartup> where TStartup : class
    {
        private string connectionString = "Data Source=database.dat";

        protected override IWebHostBuilder CreateWebHostBuilder()
        {
            return WebHost.CreateDefaultBuilder()
                          .UseEnvironment(EnvironmentType.Test.GetDescription())
                          .UseStartup<TestStartup>();
        }

        protected override void ConfigureWebHost(IWebHostBuilder builder)
        {
            builder.ConfigureServices(services =>
            {
                services.AddEntityFrameworkSqlite()
                    .AddDbContext<BaseContext>(options =>
                    {
                        options.UseSqlite(connectionString);

                        options.UseInternalServiceProvider(services.BuildServiceProvider());
                    });
            });
        }

        protected override void Dispose(bool disposing)
        {
            using (var scope = Services.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<BaseContext>();
                context.Database.CloseConnection();
                context.Database.EnsureDeleted();
                //See about base Dispose: https://learn.microsoft.com/en-us/dotnet/api/system.idisposable.dispose?view=net-8.0
            }
        }
    }
}