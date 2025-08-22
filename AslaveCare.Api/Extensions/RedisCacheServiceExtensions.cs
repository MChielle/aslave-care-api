using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Extensions;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using StackExchange.Redis;
using System;

namespace AslaveCare.Api.Extensions
{
    public static class RedisCacheServiceExtensions
    {
        public static IServiceCollection AddRedisCacheService(this IServiceCollection services)
        {
            var redisContainerIP = Environment.GetEnvironmentVariable("REDIS_CONTAINER_HOST");
            if (string.IsNullOrEmpty(redisContainerIP))
                throw new ApplicationException("REDIS_CONTAINER_HOST não definido");

            var options = new ConfigurationOptions()
            {
                AbortOnConnectFail = false,
                EndPoints = { redisContainerIP }
            };

            IConnectionMultiplexer redis = ConnectionMultiplexer.Connect(options);
            services.AddScoped(x => redis.GetDatabase());

            return services;
        }
    }
}