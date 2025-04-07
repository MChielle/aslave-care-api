using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.Entry;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;

namespace SlaveCare.Service.Services
{
    public class EntryService : ServiceBase<EntryAddModel, EntryUpdateModel, EntryPatchModel, EntryGetModel, EntryModel, Entry, Guid>, IEntryService
    {
        public EntryService(IEntryRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
        }
    }
}