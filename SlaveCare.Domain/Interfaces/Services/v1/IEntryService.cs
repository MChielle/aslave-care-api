using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.Entry;
using System;

namespace SlaveCare.Domain.Interfaces.Services
{
    public interface IEntryService : IServiceBase<EntryAddModel, EntryUpdateModel, EntryPatchModel, EntryGetModel, EntryModel, Guid>
    {
    }
}