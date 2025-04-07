using SlaveCare.Api.Controllers.Base;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.Entry;
using System;

namespace SlaveCare.Api.Controllers.v1
{
    public class RegistryInController : EntityController<RegistryInAddModel, RegistryInUpdateModel, RegistryInPatchModel, RegistryInGetModel, RegistryInModel, Guid>
    {
        public RegistryInController(IRegistryInService service)
            : base(service)
        {
        }
    }
}