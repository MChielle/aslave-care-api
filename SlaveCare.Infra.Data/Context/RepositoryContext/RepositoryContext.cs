
using AutoMapper;

namespace SlaveCare.Infra.Data.Context.RepositoryContext
{
    public class RepositoryContext : IRepositoryContext
    {
        public IMapper Mapper { get; set; }

        public RepositoryContext(IMapper mapper)
        {
            Mapper = mapper;
        }
    }
}