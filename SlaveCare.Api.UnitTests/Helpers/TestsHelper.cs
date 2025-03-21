using AutoMapper;
using SlaveCare.Service.Mappings;

namespace SlaveCare.Api.UnitTests.Helpers
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