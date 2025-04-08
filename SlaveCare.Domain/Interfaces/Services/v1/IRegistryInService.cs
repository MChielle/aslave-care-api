using SlaveCare.Domain.Interfaces.Services.Core;
using System;
using SlaveCare.Domain.Models.v1.RegistryIn;

namespace SlaveCare.Domain.Interfaces.Services
{
    public interface IRegistryInService : IServiceBase<RegistryInAddModel, RegistryInUpdateModel, RegistryInPatchModel, RegistryInGetModel, RegistryInModel, Guid>
    {
    }
}