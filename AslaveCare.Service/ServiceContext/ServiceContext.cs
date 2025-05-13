using AutoMapper;

namespace AslaveCare.Service.ServiceContext
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