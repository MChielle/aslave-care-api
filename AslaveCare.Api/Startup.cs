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
using System;

namespace AslaveCare.Api
{
    public class Startup
    {
        private readonly IConfiguration _configuration;
        public Startup(IConfiguration configuration, IWebHostEnvironment environment)
        {
            _configuration = configuration;
            BuildEnvironment.SetEnvironment(Enum.Parse<EnvironmentType>(environment.EnvironmentName));
        }

        public virtual void ConfigureServices(IServiceCollection services)
        {
            services
                .AddControllers()
                .AddFluentValidation(c =>
                {
                    c.RegisterValidatorsFromAssemblyContaining<Startup>();
                });

            if (!BuildEnvironment.IsTest()) services.AddFluentValidationRulesToSwagger();

            InjectionFactory.Build(services, _configuration);

            services.AddMvcServices();
            services.AddAutoMapperServices();

            StartupHelper.ConfigureAuthentication(services, _configuration);
            StartupHelper.ConfigureAuthorization(services);

            if (!BuildEnvironment.IsTest()) services.AddRedisCacheService();

            //TODO: buscar outras soluções, independente de configuração de build sempre ocorre "Object reference not set to an instance of an object" durante a migration.
            //StartupHelper.ConfigureFirebase(services, _logger);
            //StartupHelper.ConfigureAmazonS3(services, _logger);

            if (!BuildEnvironment.IsTest())
            {
                StartupHelper.ConfigureGoogleOAuth2(services, _configuration);
                StartupHelper.ConfigureIntegrationProviders(_configuration);
                StartupHelper.ConfigureHttpSms(services, _configuration);
                StartupHelper.ConfigureDevino(services, _configuration);
                StartupHelper.ConfigureSmsDev(services, _configuration);
                StartupHelper.ConfigureSwagger(services);
                StartupHelper.ConfigureOpenTelemetry(services);
            }
        }

        public virtual void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app.UseForwardedHeaders();

            if (!BuildEnvironment.IsProduction() && !BuildEnvironment.IsTest())
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