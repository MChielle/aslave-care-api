using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.TaskNote;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface ITaskNoteService : IServiceBase<TaskNoteAddModel, TaskNoteUpdateModel, TaskNotePatchModel, TaskNoteGetModel, TaskNoteModel, Guid>
    {
        Task<IResponseBase> GetToListAsync(string token, CancellationToken cancellation = default);
    }
}