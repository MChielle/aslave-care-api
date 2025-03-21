using AutoMapper;

namespace SlaveCare.Infra.Data.Context.RepositoryContext
{
    public interface IRepositoryContext
    {
        IMapper Mapper { get; set; }
    }
}