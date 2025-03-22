using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Extensions;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Interfaces.Services.v1.Authentication;
using SlaveCare.Domain.Interfaces.Services.v1.Notification;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories;
using SlaveCare.Infra.Data.Repositories.v1;
using SlaveCare.Integration.Amazon.S3.Interfaces;
using SlaveCare.Integration.Amazon.S3.Services;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services;
using SlaveCare.Service.Services.v1;
using SlaveCare.Service.Services.v1.Authentication;
using SlaveCare.Service.Services.v1.Notification;
using System;

namespace SlaveCare.Infra.Data.Injection
{
    public sealed class InjectionFactory : IDesignTimeDbContextFactory<BaseContext>
    {
        private static IServiceCollection _services;

        private static EnvironmentType _environmentType;

        private static IConfiguration _configuration;

        private static ILogger _logger;

        public static void Build(IServiceCollection services, IConfiguration configuration, EnvironmentType environment, ILogger logger)
        {
            _services = services;
            _configuration = configuration;
            _environmentType = environment;
            _logger = logger;

            ConfigureDbContext();
            LoadServicesAndRepositories();
        }

        private static void ConfigureDbContext()
        {
            if (_environmentType != EnvironmentType.Test)
            {
#if DEBUG
                var _connectionString = _configuration.GetConnectionString("DefaultConnection");
#else
                var _connectionString = _configuration.GetValue<string>("DEFAULT_CONNECTION");
#endif
                _logger.LogInformation(string.Concat($"Configure Connection String (ConfigureDbContext)".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), (string.IsNullOrEmpty(_connectionString) ? "ERROR" : "Executed")));

                _services.AddDbContext<BaseContext>(options =>
                    options.UseMySql(_connectionString,
                        ServerVersion.AutoDetect(_connectionString),
                        mySqlOptionsAction =>
                        {
                            mySqlOptionsAction.EnableRetryOnFailure(
                                maxRetryCount: 5,
                                maxRetryDelay: TimeSpan.FromSeconds(15),
                                errorNumbersToAdd: null);

#if DEBUG
                            options.EnableSensitiveDataLogging();
#endif
                        }));
            }
        }

        public BaseContext CreateDbContext(string[] args)
        {
#if DEBUG

            var _connectionString = _configuration.GetConnectionString("DefaultConnection");
#else
            var _connectionString = _configuration.GetValue<string>("DEFAULT_CONNECTION");
#endif
            _logger.LogInformation(string.Concat($"Configure Connection String (CreateDbContext)".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), (string.IsNullOrEmpty(_connectionString) ? "ERROR" : "Executed")));

            var optionsBuilder = new DbContextOptionsBuilder<BaseContext>();
            optionsBuilder.UseMySql(_connectionString,
                        ServerVersion.AutoDetect(_connectionString),
                        mySqlOptionsAction =>
                        {
                            mySqlOptionsAction.EnableRetryOnFailure(
                                maxRetryCount: 5,
                                maxRetryDelay: TimeSpan.FromSeconds(15),
                                errorNumbersToAdd: null);
                        }
                    );

            optionsBuilder.EnableSensitiveDataLogging(true);

            return new BaseContext(optionsBuilder.Options);
        }

        private static void LoadServicesAndRepositories()
        {
            #region services

            _services.AddScoped<IUserService, UserService>();

            _logger.LogInformation(string.Concat($"Configure Injection Services".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));

            #endregion services

            #region other services

            _services.AddScoped<IJwtService, JwtService>();
            _services.AddScoped<IRoleService, RoleService>();
            _services.AddScoped<IOAuthService, OAuthService>();
            _services.AddScoped<ISignInService, SignInService>();
            _services.AddScoped<ISignUpService, SignUpService>();
            _services.AddScoped<IS3FileService, S3FileService>();
            _services.AddScoped<IServiceContext, ServiceContext>();
            _services.AddScoped<IManagerService, ManagerService>();
            _services.AddScoped<IEmployeeService, EmployeeService>();
            _services.AddScoped<INotificationService, NotificationService>();
            _services.AddScoped<IUserValidationService, UserValidationService>();
            _services.AddScoped<ISupplierService, SupplierService>();

            _logger.LogInformation(string.Concat($"Configure Injection Other Services".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));

            #endregion other services

            #region Repositories

            _services.AddScoped<IUserRepository, UserRepository>();
            _services.AddScoped<IRoleRepository, RoleRepository>();
            _services.AddScoped<IRepositoryContext, RepositoryContext>();
            _services.AddScoped<IManagerRepository, ManagerRepository>();
            _services.AddScoped<IEmployeeRepository, EmployeeRepository>();
            _services.AddScoped<IUserValidationRepository, UserValidationRepository>();
            _services.AddScoped<ISupplierRepository, SupplierRepository>();

            _logger.LogInformation(string.Concat($"Configure Injection Repositories".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));

            #endregion Repositories
        }
    }
}