using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System.Reflection;
using AslaveCare.Api;
using AslaveCare.Api.IntegrationTests.Configuration;

namespace AslaveCare.Api.IntegrationTests.Configuration
{
    public class TestStartup : Startup
    {
        public TestStartup(IConfiguration configuration, IWebHostEnvironment environment, ILogger<TestStartup> logger)
          : base(configuration, environment, logger)
        {
        }

        public override void ConfigureServices(IServiceCollection services)
        {
            services.AddTransient<TestDataSeeder>();
            services.AddMvc().AddApplicationPart(Assembly.Load(new AssemblyName("SlaveCare.Api")));

            base.ConfigureServices(services);
        }

        public override void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILoggerFactory logger)
        {
            base.Configure(app, env, logger);

            using var serviceScope = app.ApplicationServices.GetRequiredService<IServiceScopeFactory>().CreateScope();
            _ = serviceScope.ServiceProvider.GetService<TestDataSeeder>();
        }
    }
}
