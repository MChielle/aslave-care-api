using AslaveCare.Api.UnitTests.Helpers;
using AslaveCare.Domain.Entities.Core;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Moq;
using System;
using System.Reflection;

namespace AslaveCare.Api.UnitTests.Base
{
    public class RepositoryBaseTest<TRepository, TEntity, TKey> : IDisposable
        where TRepository : RepositoryBase<BaseContext, TEntity, TKey>
        where TEntity : Entity<TKey>, IEntity<TKey>, new()
    {
        public TRepository _repository;
        private BaseContext baseContext;
        private readonly Mock<IRepositoryContext> repositoryContextMock;

        //private readonly IMapper mapper;
        public FixtureHelper fixture;

        public RepositoryBaseTest()
        {
            repositoryContextMock = new Mock<IRepositoryContext>();

            //var mappingConfig = new MapperConfiguration(config =>
            //{
            //    config.AddProfile(new MappingProfile());
            //});

            //mapper = mappingConfig.CreateMapper();
            //repositoryContextMock.Setup(x => x.Mapper).Returns(mapper);

            GetInMemoryRepository();
            fixture = new FixtureHelper();
        }

        public void Dispose()
        {
            _repository.Dispose();
        }

        private void GetInMemoryRepository()
        {
            DbContextOptions<BaseContext> options;
            var builder = new DbContextOptionsBuilder<BaseContext>();
            var databaseRoot = new InMemoryDatabaseRoot();

            builder.UseInMemoryDatabase("aslavecare_test", databaseRoot);
            builder.EnableServiceProviderCaching(false);

            options = builder.Options;
            baseContext = new BaseContext(options);

            baseContext.Database.EnsureDeleted();
            baseContext.Database.EnsureCreated();

            var ctors = typeof(TRepository).GetConstructors(BindingFlags.Public | BindingFlags.Instance);

            _repository = ctors[0].Invoke(new object[] { baseContext, repositoryContextMock.Object }) as TRepository;
        }

        public TRepositoryInstance CreateRepositoryInstance<TRepositoryInstance, TRepositoryEntity>()
            where TRepositoryInstance : RepositoryBase<BaseContext, TRepositoryEntity, Guid>
            where TRepositoryEntity : Entity<Guid>, IEntity<Guid>, new()
        {
            var ctors = typeof(TRepositoryInstance).GetConstructors(BindingFlags.Public | BindingFlags.Instance);

            return ctors[0].Invoke(new object[] { baseContext, repositoryContextMock.Object }) as TRepositoryInstance;
        }
    }
}