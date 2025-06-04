using AslaveCare.Api.Extensions;
using AslaveCare.Api.Helpers;
using AslaveCare.Domain.Helpers;
using AslaveCare.Domain.Models;
using AslaveCare.Infra.Data.Injection;
using FluentValidation.AspNetCore;
using MicroElements.Swashbuckle.FluentValidation.AspNetCore;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System;

namespace AslaveCare.Api
{
    public class Startup
    {
        private readonly ILogger _logger;
        public IConfiguration Configuration { get; }

        public Startup(IConfiguration configuration, IWebHostEnvironment environment, ILogger<Startup> logger)
        {
            Configuration = configuration;
            EnvironmentHelper.Environment = Enum.Parse<EnvironmentType>(environment.EnvironmentName);
            _logger = logger;
        }

        public virtual void ConfigureServices(IServiceCollection services)
        {
            services
                .AddControllers()
                .AddFluentValidation(c =>
                {
                    c.RegisterValidatorsFromAssemblyContaining<Startup>();
                });

            services.AddFluentValidationRulesToSwagger();

            InjectionFactory.Build(services, Configuration, EnvironmentHelper.Environment, _logger);

            var appSettingsSection = Configuration.GetSection("AppSettings");

            services.Configure<AppSettings>(appSettingsSection);

            StartupHelper.ConfigureMvcAndFluentValidation(services, _logger);
            StartupHelper.ConfigureNewtonsoft(services, _logger);
            StartupHelper.ConfigureAutoMapper(services, _logger);

            StartupHelper.ConfigureAuthentication(services, _logger);
            StartupHelper.ConfigureAuthorization(services, _logger);
            StartupHelper.ConfigureRedis(services, _logger);

            //TODO: buscar outras soluções, independente de configuração de build sempre ocorre "Object reference not set to an instance of an object" durante a migration.
            //StartupHelper.ConfigureFirebase(services, _logger);
            //StartupHelper.ConfigureAmazonS3(services, _logger);
            StartupHelper.ConfigureGoogleOAuth2(services, _logger);

            StartupHelper.ConfigureIntegrationProviders(_logger);
            StartupHelper.ConfigureHttpSms(services, _logger);
            StartupHelper.ConfigureDevino(services, _logger);
            StartupHelper.ConfigureSmsDev(services, _logger);

            StartupHelper.ConfigureSwagger(services, _logger);

            services.ConfigureProblemDetailsModelState(_logger);
        }

        public virtual void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILoggerFactory loggerFactory)
        {
            app.UseForwardedHeaders();

            if (EnvironmentHelper.Environment != EnvironmentType.Production)
            {
                app.UseDeveloperExceptionPage();
                StartupHelper.UseSwagger(app);
            }
            else
            {
                app.UseHsts();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            StartupHelper.UseCors(app);

            app.UseAuthentication();

            app.UseAuthorization();

            StartupHelper.ConfigureRewriter(app);

            app.UseProblemDetailsExceptionHandler(loggerFactory);

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();

                //Substituido por Push notification Firebase
                //StartupHelper.ConfigureSignalRHubs(endpoints);
            });

            app.Build();
        }
    }
}