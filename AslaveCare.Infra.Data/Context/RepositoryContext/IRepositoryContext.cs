using AutoMapper;

namespace AslaveCare.Infra.Data.Context.RepositoryContext
{
    public interface IRepositoryContext
    {
        IMapper Mapper { get; set; }
    }
}