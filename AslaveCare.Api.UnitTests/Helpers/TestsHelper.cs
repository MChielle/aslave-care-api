using AslaveCare.Service.Mappings;
using AutoMapper;

namespace AslaveCare.Api.UnitTests.Helpers
{
    public static class TestsHelper
    {
        public static IMapper CreateMapper()
        {
            var mappingConfig = new MapperConfiguration(config =>
            {
                config.AddProfile(new MappingProfile());
            });

            return mappingConfig.CreateMapper();
        }
    }
}