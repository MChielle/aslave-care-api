using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Interfaces.Services;
using SlaveCare.Domain.Models.v1.Entry;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;

namespace SlaveCare.Service.Services
{
    public class RegistryInService : ServiceBase<RegistryInAddModel, RegistryInUpdateModel, RegistryInPatchModel, RegistryInGetModel, RegistryInModel, RegistryIn, Guid>, IRegistryInService
    {
        public RegistryInService(IRegistryInRepository repository, IServiceContext serviceContext)
            : base(repository, serviceContext)
        {
        }
    }
}