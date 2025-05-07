using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Domain.Interfaces.Services.Core
{
    public interface IServiceBase<TAddModel, TUpdateModel, TPatchModel, TGetModel, TModel, TKey>
        where TAddModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TUpdateModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TPatchModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TGetModel : EntityModel<TKey>, IEntityModel<TKey>, new()
        where TModel : EntityModel<TKey>, IEntityModel<TKey>, new()
    {
        Task<IResponseBase> AddOrUpdateAsync(TModel model);

        Task<IResponseBase> AddAsync(TAddModel model);

        Task<IResponseBase> UpdateAsync(TUpdateModel model);

        Task<IResponseBase> AddOrUpdateAsync(IEnumerable<TModel> models);

        Task<IResponseBase> GetByIdAsync(TKey id, CancellationToken cancellationToken = default);

        Task<IResponseBase> GetCompleteByIdAsync(TKey id, CancellationToken cancellationToken = default);

        Task<IResponseBase> GetAllAsync(CancellationToken cancellationToken = default);

        Task<IResponseBase> GetAllPagedAsync(int? page, int? pageSize, CancellationToken cancellationToken = default);

        void Delete(TModel model);

        void Delete(IEnumerable<TModel> models);

        void Delete(TKey id);

        void Delete(IEnumerable<TKey> ids);

        Task<IResponseBase> Patch(TKey id, TPatchModel model);
    }
}
