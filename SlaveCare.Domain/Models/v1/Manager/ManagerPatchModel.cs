using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.Manager
{
    public class ManagerPatchModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public bool? Disable { get; set; }
        public Guid? StoreId { get; set; }
        public Guid? UserId { get; set; }
    }
}