using AutoMapper;
using FirebaseAdmin;
using FluentValidation.AspNetCore;
using Google.Apis.Auth.OAuth2;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Rewrite;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using StackExchange.Redis;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Threading.Tasks;
using AslaveCare.Api;
using AslaveCare.Api.Configurations;
using AslaveCare.Api.Filters;
using AslaveCare.Domain.Configurations;
using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Extensions;
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
                    "https://slave-care-web.onrender.com"
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

        internal static void ConfigureRedis(IServiceCollection services, ILogger _logger)
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

            _logger.LogInformation(string.Concat("Configure Redis".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void UseSwagger(IApplicationBuilder app)
        {
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "v1");
            });
        }

        internal static void ConfigureSwagger(IServiceCollection services, ILogger _logger)
        {
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "SlaveCare API",
                    Description = $"API {EnvironmentHelper.GetShortEnvironmentName()}."
                });

                c.SwaggerDoc("v1.1", new OpenApiInfo
                {
                    Version = "v1.1",
                    Title = "SlaveCare API",
                    Description = $"API {EnvironmentHelper.GetShortEnvironmentName()}."
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

            _logger.LogInformation(string.Concat("Configure Swagger".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureSignalR(IServiceCollection services, ILogger _logger)
        {
            services.AddSignalR(hubOpts =>
            {
                hubOpts.KeepAliveInterval = TimeSpan.FromSeconds(15); //default e 15 segundos
                hubOpts.ClientTimeoutInterval = TimeSpan.FromSeconds(30); //default e 30 segundos
#if DEBUG
                hubOpts.EnableDetailedErrors = true;
#endif
            });

            _logger.LogInformation(string.Concat("Configure SignalR".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureNewtonsoft(IServiceCollection services, ILogger _logger)
        {
            services.AddMvc(c => c.Conventions.Add(new ApiVersionConvention()))
                    .AddNewtonsoftJson(option =>
                    {
                        option.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
                        option.SerializerSettings.DateTimeZoneHandling = DateTimeZoneHandling.Utc;
                        option.SerializerSettings.DateFormatString = "yyyy-MM-dd'T'HH:mm:ss'Z'";
                        option.SerializerSettings.NullValueHandling = NullValueHandling.Ignore;
                    });

            _logger.LogInformation(string.Concat("Configure Newtonsoft".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureAutoMapper(IServiceCollection services, ILogger _logger)
        {
            var mappingConfig = new MapperConfiguration(config =>
            {
                config.AddProfile(new MappingProfile());
            });
            IMapper mapper = mappingConfig.CreateMapper();
            services.AddSingleton(mapper);

            _logger.LogInformation(string.Concat("Configure AutoMapper".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureAuthorization(IServiceCollection services, ILogger _logger)
        {
            // Ativa o uso do token como forma de autorizar o acesso a recursos deste projeto
            services.AddAuthorization(auth =>
            {
                auth.AddPolicy("Bearer", new AuthorizationPolicyBuilder()
                    .AddAuthenticationSchemes(JwtBearerDefaults.AuthenticationScheme)
                    .RequireAuthenticatedUser().Build());
            });
            _logger.LogInformation(string.Concat("Configure Authorization".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureAuthentication(IServiceCollection services, ILogger _logger)
        {
            var signingConfigurations = new SigningConfigurations(_logger);

            services.AddSingleton(signingConfigurations);

            var tokenConfigurations = new TokenConfigurations()
            {
                Issuer = System.Environment.GetEnvironmentVariable("ISSUER_TOKEN"),
                Audience = System.Environment.GetEnvironmentVariable("AUDIENCE_TOKEN"),
                AccessTokenValidity = int.Parse(System.Environment.GetEnvironmentVariable("ACCESS_TOKEN_VALIDITY")),
                RefreshTokenValidity = int.Parse(System.Environment.GetEnvironmentVariable("REFRESH_TOKEN_VALIDITY"))
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

            _logger.LogInformation(string.Concat("Configure Authentication".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureMvcAndFluentValidation(IServiceCollection services, ILogger _logger)
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

            _logger.LogInformation(string.Concat("Configure Mvc and Fluent Validation".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureHttpSms(IServiceCollection services, ILogger _logger)
        {
            var PhoneGateways = new Dictionary<string, string>();
            foreach (var countryId in Enum.GetNames<CountryType>())
            {
                PhoneGateways.Add(countryId, Environment.GetEnvironmentVariable($"HTTP_SMS_GATEWAY_PHONE_NUMBER_{countryId}"));
            }

            var httpSmsConfiguration = new HttpSmsConfiguration
                (
                    Environment.GetEnvironmentVariable("HTTP_SMS_TOKEN"),
                    Environment.GetEnvironmentVariable("HTTP_SMS_BASE_URL"),
                    PhoneGateways
                );

            services.AddSingleton(httpSmsConfiguration);
            services.AddSingleton<IHttpSmsService, HttpSmsService>();

            _logger.LogInformation(string.Concat("Configure HTTP SMS Integration".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureDevino(IServiceCollection services, ILogger _logger)
        {
            var devinoConfiguration = new DevinoConfiguration
                (
                    Environment.GetEnvironmentVariable("SMS_DEVINO_BASE_URL"),
                    Environment.GetEnvironmentVariable("SMS_DEVINO_KEY"),
                    Environment.GetEnvironmentVariable("APPLICATION_NAME")

                );

            services.AddSingleton(devinoConfiguration);
            services.AddSingleton<IDevinoService, DevinoService>();

            _logger.LogInformation(string.Concat("Configure Devino Integration".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureSmsDev(IServiceCollection services, ILogger _logger)
        {
            var smsDevConfiguration = new SmsDevConfiguration
                (
                    Environment.GetEnvironmentVariable("SMS_DEV_BASE_URL"),
                    Environment.GetEnvironmentVariable("SMS_DEV_KEY")
                );

            services.AddSingleton(smsDevConfiguration);
            services.AddSingleton<ISmsDevService, SmsDevService>();
            _logger.LogInformation(string.Concat("Configure SmsDev Integration".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureIntegrationProviders(ILogger _logger)
        {
            IntegrationConfiguration.SmsProvider = Environment.GetEnvironmentVariable("SMS_SERVICE_PROVIDER");
            _logger.LogInformation(string.Concat("Configure Integration Providers".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureFirebase(IServiceCollection services, ILogger _logger)
        {
            FirebaseApp.Create(new AppOptions
            {
                Credential = GoogleCredential.FromJson(JsonConvert.SerializeObject(new
                {
                    type = Environment.GetEnvironmentVariable("FIREBASE_TYPE"),
                    project_id = Environment.GetEnvironmentVariable("FIREBASE_PROJECT_ID"),
                    private_key_id = Environment.GetEnvironmentVariable("FIREBASE_PRIVATE_KEY_ID"),
                    private_key = Environment.GetEnvironmentVariable("FIREBASE_PRIVATE_KEY"),
                    client_email = Environment.GetEnvironmentVariable("FIREBASE_CLIENT_EMAIL"),
                    client_id = Environment.GetEnvironmentVariable("FIREBASE_CLIENT_ID"),
                    auth_uri = Environment.GetEnvironmentVariable("FIREBASE_AUTH_URI"),
                    token_uri = Environment.GetEnvironmentVariable("FIREBASE_TOKEN_URI"),
                    auth_provider_x509_cert_url = Environment.GetEnvironmentVariable("FIREBASE_AUTH_PROVIDER_X509_CERT_URL"),
                    client_x509_cert_url = Environment.GetEnvironmentVariable("FIREBASE_CLIENT_X509_CERT_URL")
                }))
            });
            services.AddSingleton<IFirebaseService, FirebaseService>();
            _logger.LogInformation(string.Concat("Configure Integration Firebase".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureAmazonS3(IServiceCollection services, ILogger _logger)
        {
            var s3Configuration = new S3Configuration(
                    Environment.GetEnvironmentVariable("AWS_ID"),
                    Environment.GetEnvironmentVariable("AWS_SECRET"),
                    Environment.GetEnvironmentVariable("AWS_BUCKET"),
                    Environment.GetEnvironmentVariable("AWS_BUCKET_IMAGE"),
                    Environment.GetEnvironmentVariable("AWS_BUCKET_IMAGE_LOGO"),
                    Environment.GetEnvironmentVariable("AWS_BUCKET_IMAGE_PHOTO"),
                    Environment.GetEnvironmentVariable("AWS_BUCKET_IMAGE_GALLERY"),
                    Environment.GetEnvironmentVariable("AWS_REGION")
                );

            services.AddSingleton(s3Configuration);
            services.AddSingleton<IS3FileService, S3FileService>();
            _logger.LogInformation(string.Concat("Configure Integration Amazon S3".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }

        internal static void ConfigureGoogleOAuth2(IServiceCollection services, ILogger _logger)
        {
            var googleOAuth2Configuration = new GoogleOAuth2Configuration(
                    Environment.GetEnvironmentVariable("GOOGLE_OAUTH2_BASE_URL")
                );

            services.AddSingleton(googleOAuth2Configuration);
            services.AddSingleton<IGoogleOAuth2Service, GoogleOAuth2Service>();
            _logger.LogInformation(string.Concat("Configure Integration Google OAuth2".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
        }
    }
}
