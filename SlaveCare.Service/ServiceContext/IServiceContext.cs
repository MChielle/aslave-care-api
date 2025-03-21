using AutoMapper;

namespace SlaveCare.Service.ServiceContext
{
    public interface IServiceContext
    {
        IMapper Mapper { get; set; }
    }
}