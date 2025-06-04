using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Infra.Data.Repositories
{
    public class TaskNoteRepository : RepositoryBase<BaseContext, TaskNote, Guid>, ITaskNoteRepository
    {
        public TaskNoteRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override async Task<TaskNote> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await GetByIdAsync(id, cancellationToken);
        }

        public async Task<List<TaskNote>> GetToListAsync(Guid userId, CancellationToken cancellation)
        {
            return await _context.TaskNotes
                .Where(x => x.DeletionDate == null)
                .Where(x => x.Done != true)
                .Where(x => x.UserId == userId)
                .OrderByDescending(x => x.CreationDate)
                .ToListAsync(cancellation);
        }
    }
}