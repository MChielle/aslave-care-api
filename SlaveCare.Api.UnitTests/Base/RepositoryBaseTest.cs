using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Moq;
using SlaveCare.Api.UnitTests.Helpers;
using SlaveCare.Domain.Entities.Core;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Core;
using System;
using System.Reflection;

namespace SlaveCare.Api.UnitTests.Base
{
    public class RepositoryBaseTest<TRepository, TEntity, TKey> : IDisposable
        where TRepository : RepositoryBase<BaseContext, TEntity, TKey>
        where TEntity : Entity<TKey>, IEntity<TKey>, new()
    {
        public TRepository _repository;
        private BaseContext appointmentContext;
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

            builder.UseInMemoryDatabase("appointment_test", databaseRoot);
            builder.EnableServiceProviderCaching(false);

            options = builder.Options;
            appointmentContext = new BaseContext(options);

            appointmentContext.Database.EnsureDeleted();
            appointmentContext.Database.EnsureCreated();

            var ctors = typeof(TRepository).GetConstructors(BindingFlags.Public | BindingFlags.Instance);

            _repository = ctors[0].Invoke(new object[] { appointmentContext, repositoryContextMock.Object }) as TRepository;
        }

        public TRepositoryInstance CreateRepositoryInstance<TRepositoryInstance, TRepositoryEntity>()
            where TRepositoryInstance : RepositoryBase<BaseContext, TRepositoryEntity, Guid>
            where TRepositoryEntity : Entity<Guid>, IEntity<Guid>, new()
        {
            var ctors = typeof(TRepositoryInstance).GetConstructors(BindingFlags.Public | BindingFlags.Instance);

            return ctors[0].Invoke(new object[] { appointmentContext, repositoryContextMock.Object }) as TRepositoryInstance;
        }
    }
}