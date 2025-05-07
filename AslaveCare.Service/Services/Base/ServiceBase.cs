using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Entities.Core;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;

namespace AslaveCare.Service.Services.Base
{
    public abstract class ServiceBase<TAddModel, TUpdateModel, TPatchModel, TGetModel, TModel, TEntity, TKey> : IServiceBase<TAddModel, TUpdateModel, TPatchModel, TGetModel, TModel, TKey>, IDisposable
        where TAddModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TUpdateModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TPatchModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TGetModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TEntity : Entity<TKey>, IEntity<TKey>, new()
    {
        private readonly IRepositoryBase<TEntity, TKey> _repositoryBase;
        public readonly IMapper Mapper;

        protected ServiceBase(IRepositoryBase<TEntity, TKey> repositoryBase,
                           IServiceContext serviceContext)
        {
            _repositoryBase = repositoryBase;
            Mapper = serviceContext.Mapper;
        }

        public virtual async Task<IResponseBase> AddOrUpdateAsync(TModel model)
        {
            var entity = await _repositoryBase.AddOrUpdateAsync(Mapper.Map<TEntity>(model));
            if (entity == null) return new BadRequestResponse(ConstantMessages.CRUD_CREATE_FAIL, entity);
            return new OkResponse<TModel>(Mapper.Map<TModel>(entity));
        }

        public virtual async Task<IResponseBase> AddAsync(TAddModel model)
        {
            var entity = await _repositoryBase.AddAsync(Mapper.Map<TEntity>(model));
            if (entity == null) return new BadRequestResponse(ConstantMessages.CRUD_CREATE_FAIL, entity);
            return new CreatedResponse(entity);
        }

        public virtual async Task<IResponseBase> UpdateAsync(TUpdateModel model)
        {
            var entity = await _repositoryBase.UpdateAsync(Mapper.Map<TEntity>(model));
            if (entity == null) return new NoContentResponse();
            return new OkResponse<TGetModel>(Mapper.Map<TGetModel>(entity));
        }

        public virtual async Task<IResponseBase> AddOrUpdateAsync(IEnumerable<TModel> models)
        {
            var entities = await _repositoryBase.AddOrUpdateAsync(Mapper.Map<IEnumerable<TEntity>>(models));
            if (!entities.Any()) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, entities);
            return new OkResponse<IList<TModel>>(Mapper.Map<IList<TModel>>(entities));
        }

        public virtual async Task<IResponseBase> GetAllAsync(CancellationToken cancellationToken = default)
        {
            var entities = await _repositoryBase.GetAllAsync(cancellationToken: cancellationToken);
            if (!entities.Any()) return new NoContentResponse();
            return new OkResponse<IList<TGetModel>>(Mapper.Map<IList<TGetModel>>(entities));
        }

        public virtual async Task<IResponseBase> GetAllPagedAsync(int? page, int? pageSize, CancellationToken cancellationToken = default)
        {
            var entities = await _repositoryBase.GetAllPagedAsync(page, pageSize, cancellationToken);
            if (!entities.Any()) return new NoContentResponse();
            return new OkResponse<IList<TGetModel>>(Mapper.Map<IList<TGetModel>>(entities));
        }

        public virtual async Task<IResponseBase> GetByIdAsync(TKey id, CancellationToken cancellationToken = default)
        {
            var entity = await _repositoryBase.GetByIdAsync(id, cancellationToken);
            if (entity == null) return new NoContentResponse();
            return new OkResponse<TGetModel>(Mapper.Map<TGetModel>(entity));
        }

        public virtual async Task<IResponseBase> GetCompleteByIdAsync(TKey id, CancellationToken cancellationToken = default)
        {
            var entity = await _repositoryBase.GetByIdAsync(id, cancellationToken);
            if (entity == null) return new NoContentResponse();
            return new OkResponse<TModel>(Mapper.Map<TModel>(entity));
        }

        public virtual void Delete(TModel model)
        {
            _repositoryBase.Delete(Mapper.Map<TEntity>(model));
        }

        public virtual void Delete(IEnumerable<TModel> models)
        {
            _repositoryBase.Delete(Mapper.Map<IEnumerable<TEntity>>(models));
        }

        public virtual void Delete(TKey id)
        {
            var entity = new TEntity() { Id = id };
            _repositoryBase.Delete(entity);
        }

        public virtual void Delete(IEnumerable<TKey> ids)
        {
            var entities = new List<TEntity>();

            foreach (var id in ids)
                entities.Add(new TEntity() { Id = id });

            _repositoryBase.Delete(entities);
        }

        public virtual async Task<IResponseBase> Patch(TKey id, TPatchModel model)
        {
            var modelProperties = typeof(TPatchModel).GetProperties();
            var entity = await _repositoryBase.GetByIdAsync(id);
            if (entity == null) return new NoContentResponse();
            var entityProperties = typeof(TEntity).GetProperties();
            var updateProperties = modelProperties.Where(
                p => p.GetValue(model, null) != null);
            foreach (var modelProperty in updateProperties)
            {
                if (!modelProperty.Name.Equals("Id"))
                {
                    var property = entityProperties.SingleOrDefault(p => p.Name == modelProperty.Name);
                    property.SetValue(entity, modelProperty.GetValue(model, null));
                }
            }

            await _repositoryBase.UpdateAsync(entity);
            return new OkResponse<TGetModel>(Mapper.Map<TGetModel>(entity));
        }

        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }
}
