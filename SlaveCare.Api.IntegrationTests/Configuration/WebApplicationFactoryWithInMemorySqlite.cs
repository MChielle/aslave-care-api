using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.Data.Sqlite;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using SlaveCare.Infra.Data.Context;

namespace SlaveCare.Api.IntegrationTests.Configuration
{
    public class WebApplicationFactoryWithInMemorySqlite : WebApplicationFactory<TestStartup>
    {
        private readonly string _connectionString = "DataSource=:memory:";
        private readonly SqliteConnection _connection;

        public WebApplicationFactoryWithInMemorySqlite()
        {
            _connection = new SqliteConnection(_connectionString);
            _connection.Open();
        }

        protected override IWebHostBuilder CreateWebHostBuilder()
        {
            return WebHost.CreateDefaultBuilder()
                          .UseEnvironment("Test")
                          .UseStartup<TestStartup>();
        }

        protected override void ConfigureWebHost(IWebHostBuilder builder)
        {
            builder.ConfigureServices(services =>
            {
                services.AddEntityFrameworkSqlite()
                        .AddDbContext<BaseContext>(options =>
                        {
                            options.UseSqlite(_connection);
                            options.UseInternalServiceProvider(services.BuildServiceProvider());
                        });
            });
        }

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
            _connection.Close();
        }
    }
}