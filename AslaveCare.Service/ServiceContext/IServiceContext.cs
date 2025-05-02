using AutoMapper;

namespace AslaveCare.Service.ServiceContext
{
    public interface IServiceContext
    {
        IMapper Mapper { get; set; }
    }
}
