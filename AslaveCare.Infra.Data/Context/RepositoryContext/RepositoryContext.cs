using AutoMapper;
using AslaveCare.Infra.Data.Context.RepositoryContext;

namespace AslaveCare.Infra.Data.Context.RepositoryContext
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
