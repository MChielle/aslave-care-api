using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using System.Threading.Tasks;

namespace SlaveCare.Api
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
            var currentEnvironment = System.Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT");
            //if (currentEnvironment != "Development" && currentEnvironment != "Localhost")
            //    return WebHost.CreateDefaultBuilder(args)
            //    .UseKestrel(opt => opt.Limits.KeepAliveTimeout = TimeSpan.FromMinutes(DEFAULT_KESTREL_TIMEOUT))
            //    .UseStartup<Startup>()
            //    .ConfigureLogging((context, builder) =>
            //    {
            //        builder.AddConfiguration(context.Configuration.GetSection("Logging"))
            //            .AddConsole()
            //            .AddDebug()
            //            .AddGelf(options =>
            //            {
            //                // Optional config combined with Logging:GELF configuration section.
            //                options.Host = "graylog.utizie.com.br";
            //                options.LogSource = context.HostingEnvironment.ApplicationName;
            //                options.AdditionalFields["project_name"] = "apppointment-api";
            //                options.AdditionalFields["environment"] = Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT");
            //                options.AdditionalFields["machine_name"] = Environment.MachineName;
            //                options.AdditionalFields["stacktrace"] = Environment.StackTrace;
            //                options.AdditionalFields["app_version"] = Assembly.GetEntryAssembly()
            //                    .GetCustomAttribute<AssemblyInformationalVersionAttribute>().InformationalVersion;
            //            });
            //    })
            //    .Build();

            return WebHost.CreateDefaultBuilder(args)
                .UseStartup<Startup>()
                .Build();
        }
    }
}