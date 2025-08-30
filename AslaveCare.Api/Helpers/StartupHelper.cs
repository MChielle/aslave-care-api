using AslaveCare.Api.Configurations;
using AslaveCare.Api.Filters;
using AslaveCare.Domain.Configurations;
using AslaveCare.Domain.Helpers;
using AslaveCare.Integration.Amazon.S3.Configurations;
using AslaveCare.Integration.Amazon.S3.Interfaces;
using AslaveCare.Integration.Amazon.S3.Services;
using AslaveCare.Integration.Firebase.Interfaces;
using AslaveCare.Integration.Firebase.Services;
using AslaveCare.Integration.Google.OAuth2.Configurations;
using AslaveCare.Integration.Google.OAuth2.Interfaces;
using AslaveCare.Integration.Google.OAuth2.Services;
using AslaveCare.Integration.SmsMessage.Devino.Configuration;
using AslaveCare.Integration.SmsMessage.Devino.Interfaces;
using AslaveCare.Integration.SmsMessage.Devino.Services;
using AslaveCare.Integration.SmsMessage.HttpSms.Configuration;
using AslaveCare.Integration.SmsMessage.HttpSms.Interfaces;
using AslaveCare.Integration.SmsMessage.HttpSms.Service;
using AslaveCare.Integration.SmsMessage.SmsDev.Configuration;
using AslaveCare.Integration.SmsMessage.SmsDev.Interfaces;
using AslaveCare.Integration.SmsMessage.SmsDev.Services;
using AslaveCare.Service.Mappings;
using AutoMapper;
using AutoMapper.Internal;
using FirebaseAdmin;
using FluentValidation.AspNetCore;
using Google.Apis.Auth.OAuth2;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Rewrite;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using OpenTelemetry.Metrics;
using OpenTelemetry.Trace;
using StackExchange.Redis;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Threading.Tasks;

namespace AslaveCare.Api.Helpers
{
    public static class StartupHelper
    {
        public static void UseCors(IApplicationBuilder app)
        {
            app.UseCors(options =>
            {
                var urls = new List<string>
                {
                    "http://localhost:4200",
                    "https://aslave-care-web.onrender.com",
                    "https://lar-ilpi-software.onrender.com"
                };

                options.WithOrigins(urls.ToArray())
                       .AllowCredentials()
                       .AllowAnyMethod()
                       .AllowAnyHeader();
            });
        }

        internal static void ConfigureRewriter(IApplicationBuilder app)
        {
            var options = new RewriteOptions();
            options.AddRedirect("^$", "/api/healthcheck");
            app.UseRewriter(options);
        }

        internal static Task HandleOnMessageReceived(MessageReceivedContext context)
        {
            var accessToken = context.HttpContext.Request.Query["access_token"];

            // If the request is for our hub...
            var path = context.HttpContext.Request.Path;
            if (!string.IsNullOrWhiteSpace(accessToken) &&
                path.StartsWithSegments("/PedidoHub"))
                context.Token = accessToken; // Read the token out of the query string

            return Task.CompletedTask;
        }

        internal static void ConfigureRedis(IServiceCollection services)
        {
            var redisContainerIP = System.Environment.GetEnvironmentVariable("REDIS_CONTAINER_HOST");
            if (string.IsNullOrEmpty(redisContainerIP))
                throw new ApplicationException("REDIS_CONTAINER_HOST não definido");

            var options = new ConfigurationOptions()
            {
                AbortOnConnectFail = false,
                EndPoints = { redisContainerIP }
            };

            IConnectionMultiplexer redis = ConnectionMultiplexer.Connect(options);
            services.AddScoped(x => redis.GetDatabase());
        }

        internal static void UseSwagger(IApplicationBuilder app)
        {
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "v1");
            });
        }

        internal static void ConfigureSwagger(IServiceCollection services)
        {
            services.AddSwaggerGen(c =>
            {
                var title = $"LAR - ILPI Software ({BuildEnvironment.GetShortEnvironmentName()})";
                var description = "API REST made with .NET C#";
                var contact = new OpenApiContact
                {
                    Name = "Matheus Chielle",
                    Url = new Uri("https://github.com/MChielle"),
                    Email = "matheuschielle@gmail.com"
                };

                c.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = title,
                    Description = description,
                    Contact = contact
                });

                c.SwaggerDoc("v2", new OpenApiInfo
                {
                    Version = "v2",
                    Title = title,
                    Description = description,
                    Contact = contact
                });

                c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
                {
                    Description = "JWT Authorization header using the Bearer scheme",
                    Name = "Authorization",
                    In = ParameterLocation.Header,
                    Type = SecuritySchemeType.ApiKey,
                    Scheme = "Bearer"
                });
                c.AddSecurityRequirement(new OpenApiSecurityRequirement
                {
                    {
                        new OpenApiSecurityScheme
                        {
                            Reference = new OpenApiReference
                            {
                                Type = ReferenceType.SecurityScheme,
                                Id = "Bearer"
                            }
                        },
                        Array.Empty<string>()
                    }
                });
                var xmlFilename = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                c.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, xmlFilename));
            });
        }

        internal static void ConfigureSignalR(IServiceCollection services)
        {
            services.AddSignalR(hubOpts =>
            {
                hubOpts.KeepAliveInterval = TimeSpan.FromSeconds(15); //default e 15 segundos
                hubOpts.ClientTimeoutInterval = TimeSpan.FromSeconds(30); //default e 30 segundos
#if DEBUG
                hubOpts.EnableDetailedErrors = true;
#endif
            });
        }

        internal static void ConfigureNewtonsoft(IServiceCollection services)
        {
            services.AddMvc(c => c.Conventions.Add(new ApiVersionConvention()))
                    .AddNewtonsoftJson(option =>
                    {
                        option.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
                        option.SerializerSettings.DateTimeZoneHandling = DateTimeZoneHandling.Utc;
                        option.SerializerSettings.DateFormatString = "yyyy-MM-dd'T'HH:mm:ss'Z'";
                        option.SerializerSettings.NullValueHandling = NullValueHandling.Ignore;
                    });
        }

        internal static void ConfigureAutoMapper(IServiceCollection services)
        {
            var mappingConfig = new MapperConfiguration(config =>
            {
                config.Internal().RecursiveQueriesMaxDepth = 3;
                config.AddProfile(new MappingProfile());
            });
            IMapper mapper = mappingConfig.CreateMapper();
            services.AddSingleton(mapper);
        }

        internal static void ConfigureAuthorization(IServiceCollection services)
        {
            // Ativa o uso do token como forma de autorizar o acesso a recursos deste projeto
            services.AddAuthorization(auth =>
            {
                auth.AddPolicy("Bearer", new AuthorizationPolicyBuilder()
                    .AddAuthenticationSchemes(JwtBearerDefaults.AuthenticationScheme)
                    .RequireAuthenticatedUser().Build());
            });
        }

        internal static void ConfigureAuthentication(IServiceCollection services, IConfiguration configuration)
        {
            RSACipherHelper.SetHash(configuration);

            var signingConfigurations = new SigningConfigurations(configuration);

            services.AddSingleton(signingConfigurations);

            var tokenConfigurations = new TokenConfigurations()
            {
                Issuer = configuration.GetValue<string>("ISSUER_TOKEN"),
                Audience = configuration.GetValue<string>("AUDIENCE_TOKEN"),
                AccessTokenValidity = int.Parse(configuration.GetValue<string>("ACCESS_TOKEN_VALIDITY")),
                RefreshTokenValidity = int.Parse(configuration.GetValue<string>("REFRESH_TOKEN_VALIDITY"))
            };

            services.AddSingleton(tokenConfigurations);

            services.AddAuthentication(authOptions =>
            {
                authOptions.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                authOptions.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            }).AddJwtBearer(bearerOptions =>
            {
                bearerOptions.RequireHttpsMetadata = false;
                bearerOptions.SaveToken = true;
                bearerOptions.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = signingConfigurations.Key,
                    ValidateIssuer = false,
                    ValidateAudience = false
                };

                bearerOptions.Events = new JwtBearerEvents
                {
                    OnMessageReceived = context => HandleOnMessageReceived(context)
                };
            });
        }

        internal static void ConfigureMvcAndFluentValidation(IServiceCollection services)
        {
            services.AddMvc(options =>
            {
                options.EnableEndpointRouting = false;
                options.Filters.Add(typeof(ActionFilter));
            }).AddNewtonsoftJson(option =>
            {
                option.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
                option.SerializerSettings.DateTimeZoneHandling = DateTimeZoneHandling.Unspecified;
                option.SerializerSettings.ContractResolver = new CamelCasePropertyNamesContractResolver();
            })
            .AddFluentValidation(fvc => fvc.RegisterValidatorsFromAssemblyContaining<Startup>());
        }

        internal static void ConfigureHttpSms(IServiceCollection services, IConfiguration configuration)
        {
            var PhoneGateways = new Dictionary<string, string>();
            foreach (var countryId in Enum.GetNames<CountryType>())
            {
                PhoneGateways.Add(countryId, configuration.GetValue<string>($"HTTP_SMS_GATEWAY_PHONE_NUMBER_{countryId}"));
            }

            var httpSmsConfiguration = new HttpSmsConfiguration
                (
                    Environment.GetEnvironmentVariable("HTTP_SMS_TOKEN"),
                    Environment.GetEnvironmentVariable("HTTP_SMS_BASE_URL"),
                    PhoneGateways
                );

            services.AddSingleton(httpSmsConfiguration);
            services.AddSingleton<IHttpSmsService, HttpSmsService>();
        }

        internal static void ConfigureDevino(IServiceCollection services, IConfiguration configuration)
        {
            var devinoConfiguration = new DevinoConfiguration
                (
                    configuration.GetValue<string>("SMS_DEVINO_BASE_URL"),
                    configuration.GetValue<string>("SMS_DEVINO_KEY"),
                    configuration.GetValue<string>("APPLICATION_NAME")

                );

            services.AddSingleton(devinoConfiguration);
            services.AddSingleton<IDevinoService, DevinoService>();
        }

        internal static void ConfigureSmsDev(IServiceCollection services, IConfiguration configuration)
        {
            var smsDevConfiguration = new SmsDevConfiguration
                (
                    configuration.GetValue<string>("SMS_DEV_BASE_URL"),
                    configuration.GetValue<string>("SMS_DEV_KEY")
                );

            services.AddSingleton(smsDevConfiguration);
            services.AddSingleton<ISmsDevService, SmsDevService>();
        }

        internal static void ConfigureIntegrationProviders(IConfiguration configuration)
        {
            IntegrationConfiguration.SmsProvider = configuration.GetValue<string>("SMS_SERVICE_PROVIDER");
        }

        internal static void ConfigureFirebase(IServiceCollection services, IConfiguration configuration)
        {
            FirebaseApp.Create(new AppOptions
            {
                Credential = GoogleCredential.FromJson(JsonConvert.SerializeObject(new
                {
                    type = configuration.GetValue<string>("FIREBASE_TYPE"),
                    project_id = configuration.GetValue<string>("FIREBASE_PROJECT_ID"),
                    private_key_id = configuration.GetValue<string>("FIREBASE_PRIVATE_KEY_ID"),
                    private_key = configuration.GetValue<string>("FIREBASE_PRIVATE_KEY"),
                    client_email = configuration.GetValue<string>("FIREBASE_CLIENT_EMAIL"),
                    client_id = configuration.GetValue<string>("FIREBASE_CLIENT_ID"),
                    auth_uri = configuration.GetValue<string>("FIREBASE_AUTH_URI"),
                    token_uri = configuration.GetValue<string>("FIREBASE_TOKEN_URI"),
                    auth_provider_x509_cert_url = configuration.GetValue<string>("FIREBASE_AUTH_PROVIDER_X509_CERT_URL"),
                    client_x509_cert_url = configuration.GetValue<string>("FIREBASE_CLIENT_X509_CERT_URL")
                }))
            });
            services.AddSingleton<IFirebaseService, FirebaseService>();
        }

        internal static void ConfigureAmazonS3(IServiceCollection services, IConfiguration configuration)
        {
            var s3Configuration = new S3Configuration(
            configuration.GetValue<string>("AWS_ID"),
            configuration.GetValue<string>("AWS_SECRET"),
            configuration.GetValue<string>("AWS_BUCKET"),
            configuration.GetValue<string>("AWS_BUCKET_IMAGE"),
            configuration.GetValue<string>("AWS_BUCKET_IMAGE_LOGO"),
            configuration.GetValue<string>("AWS_BUCKET_IMAGE_PHOTO"),
            configuration.GetValue<string>("AWS_BUCKET_IMAGE_GALLERY"),
            configuration.GetValue<string>("AWS_REGION")
                );

            services.AddSingleton(s3Configuration);
            services.AddSingleton<IS3FileService, S3FileService>();
        }

        internal static void ConfigureGoogleOAuth2(IServiceCollection services, IConfiguration configuration)
        {
            var googleOAuth2Configuration = new GoogleOAuth2Configuration(
                    configuration.GetValue<string>("GOOGLE_OAUTH2_BASE_URL")
                );

            services.AddSingleton(googleOAuth2Configuration);
            services.AddSingleton<IGoogleOAuth2Service, GoogleOAuth2Service>();
        }

        internal static void ConfigureOpenTelemetry(IServiceCollection services)
        {
            services.AddOpenTelemetry()
                .WithTracing(builder =>
                {
                    builder
                    .AddAspNetCoreInstrumentation()
                    .AddEntityFrameworkCoreInstrumentation()
                    .AddHttpClientInstrumentation()
                    .AddOtlpExporter();
                })
                .WithMetrics(metrics =>
                {
                    metrics
                    .AddAspNetCoreInstrumentation()
                    .AddHttpClientInstrumentation()
                    .AddOtlpExporter();
                });
        }
    }
}