using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Core;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories.v1
{
    public class UserValidationRepository : RepositoryBase<BaseContext, UserValidation, Guid>, IUserValidationRepository
    {
        public UserValidationRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override Task<UserValidation> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            throw new NotImplementedException();
        }
    }
}