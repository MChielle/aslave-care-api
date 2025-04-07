using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.Entry;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading.Tasks;

namespace SlaveCare.Api.Controllers.v1
{
    public class EntryController : EntityController<EntryAddModel, EntryUpdateModel, EntryPatchModel, EntryGetModel, EntryModel, Guid>
    {
        public EntryController(IEntryService service)
            : base(service)
        {
        }
    }
}