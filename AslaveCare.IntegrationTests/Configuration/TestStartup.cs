using AslaveCare.Api;
using AslaveCare.Infra.Data.Context;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System.Reflection;
using AslaveCare.IntegrationTests.Seed;
using System.Linq;

namespace AslaveCare.IntegrationTests.Configuration
{
    public class TestStartup : Startup
    {
        public TestStartup(IConfiguration configuration, IWebHostEnvironment environment)
          : base(configuration, environment)
        {
        }

        public override void ConfigureServices(IServiceCollection services)
        {
            services.AddTransient<TestDataSeeder>();
            services.AddMvc().AddApplicationPart(Assembly.Load(new AssemblyName("AslaveCare.Api")));

            base.ConfigureServices(services);
            EnsureMigrationsApplied(services);
        }

        public override void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            base.Configure(app, env);
        }

        private static void EnsureMigrationsApplied(IServiceCollection services)
        {
            using (var scope = services.BuildServiceProvider().CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<BaseContext>();
                context.Database.EnsureCreatedAsync();
                TestDataSeeder.Seed(context).Wait();
            }
        }
    }
}
