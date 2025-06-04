using AslaveCare.Api.UnitTests.Helpers;
using AslaveCare.Domain.Entities.Core;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using AutoMapper;
using Moq;
using System;

namespace AslaveCare.Api.UnitTests.Base
{
    public class ServiceBaseTest<TService, TAddModel, TUpdateModel, TPatchModel, TGetModel, TModel, TEntity, TRepository> : IDisposable
        where TService : ServiceBase<TAddModel, TUpdateModel, TPatchModel, TGetModel, TModel, TEntity, Guid>
        where TAddModel : EntityModel<Guid>, IEntityModel<Guid>, new()
        where TUpdateModel : EntityModel<Guid>, IEntityModel<Guid>, new()
        where TPatchModel : EntityModel<Guid>, IEntityModel<Guid>, new()
        where TGetModel : EntityModel<Guid>, IEntityModel<Guid>, new()
        where TModel : EntityModel<Guid>, IEntityModel<Guid>, new()
        where TEntity : Entity<Guid>, IEntity<Guid>, new()
        where TRepository : class, IRepositoryBase<TEntity, Guid>
    {
        public TService _service;
        public readonly Mock<TService> _serviceMock;
        public Mock<TRepository> _repositoryMock;
        public Mock<IServiceContext> _serviceContextMock;
        public readonly Mapper mapper;

        public FixtureHelper fixture { get; set; }

        public ServiceBaseTest()
        {
            _serviceMock = new Mock<TService>();
            _repositoryMock = new Mock<TRepository>();

            _serviceContextMock = new Mock<IServiceContext>();
            _serviceContextMock.Setup(x => x.Mapper).Returns(TestsHelper.CreateMapper());

            fixture = new FixtureHelper();
        }

        public void Dispose()
        {
            _service.Dispose();
        }
    }
}