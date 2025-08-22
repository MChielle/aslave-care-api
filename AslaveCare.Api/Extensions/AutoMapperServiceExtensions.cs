using AslaveCare.Service.Mappings;
using AutoMapper;
using AutoMapper.Internal;
using Microsoft.Extensions.DependencyInjection;

namespace AslaveCare.Api.Extensions
{
    public static class AutoMapperServiceExtensions
    {
        public static void AddAutoMapperServices(this IServiceCollection services)
        {
            var mappingConfig = new MapperConfiguration(config =>
            {
                config.Internal().RecursiveQueriesMaxDepth = 3;
                config.AddProfile(new MappingProfile());
            });
            IMapper mapper = mappingConfig.CreateMapper();
            services.AddSingleton(mapper);
        }
    }
}
