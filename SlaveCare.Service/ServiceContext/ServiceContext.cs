using AutoMapper;

namespace SlaveCare.Service.ServiceContext
{
    public class ServiceContext : IServiceContext
    {
        public IMapper Mapper { get; set; }

        public ServiceContext(IMapper mapper)
        {
            Mapper = mapper;
        }
    }
}