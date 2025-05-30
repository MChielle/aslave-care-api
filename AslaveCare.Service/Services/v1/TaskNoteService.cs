using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Models.v1.TaskNote;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services
{
    public class TaskNoteService : ServiceBase<TaskNoteAddModel, TaskNoteUpdateModel, TaskNotePatchModel, TaskNoteGetModel, TaskNoteModel, TaskNote, Guid>, ITaskNoteService
    {
        private readonly ITaskNoteRepository _repository;
        private readonly IJwtService _jwtService;
        public TaskNoteService(ITaskNoteRepository repository, IServiceContext serviceContext, IJwtService jwtService)
            : base(repository, serviceContext)
        {
            _repository = repository;
            _jwtService = jwtService;
        }

        public async Task<IResponseBase> GetToListAsync(string jwtToken, CancellationToken cancellation = default)
        {
            var userId = _jwtService.GetUserIdFromToken(jwtToken);
            var entities = await _repository.GetToListAsync(userId, cancellation);
            if (entities == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<TaskNoteGetModel>>(Mapper.Map<IEnumerable<TaskNoteGetModel>>(entities));
    }
    }
}