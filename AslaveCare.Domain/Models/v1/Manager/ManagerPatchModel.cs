﻿using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.Manager
{
    public class ManagerPatchModel : EntityModel<Guid>
    {
        public string PhotoBase64String { get; set; }

        public Guid? StoreId { get; set; }
        public Guid? UserId { get; set; }
    }
}