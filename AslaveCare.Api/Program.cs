using AslaveCare.Domain.Helpers;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using OpenTelemetry.Logs;
using System;
using System.Threading.Tasks;

namespace AslaveCare.Api
{
    public class Program
    {
        private const int DEFAULT_KESTREL_TIMEOUT = 2;

        public static Task Main(string[] args)
        {
            return BuildWebHost(args).RunAsync();
        }

        public static IWebHost BuildWebHost(string[] args)
        {
            BuildEnvironment.SetEnvironment(Enum.Parse<EnvironmentType>(Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT")));


            if (BuildEnvironment.IsProduction())
                return WebHost.CreateDefaultBuilder(args)
                .UseKestrel(opt => opt.Limits.KeepAliveTimeout = TimeSpan.FromMinutes(DEFAULT_KESTREL_TIMEOUT))
                .UseStartup<Startup>()
                .ConfigureLogging((context, builder) =>
                {
                    builder.AddOpenTelemetry(logging => logging.AddOtlpExporter());
                })
                .Build();

            return WebHost.CreateDefaultBuilder(args)
            .UseKestrel(opt => opt.Limits.KeepAliveTimeout = TimeSpan.FromMinutes(DEFAULT_KESTREL_TIMEOUT))
            .UseStartup<Startup>()
            .Build();
        }
    }
}