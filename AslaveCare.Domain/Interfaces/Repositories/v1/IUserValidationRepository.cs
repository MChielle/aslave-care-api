﻿using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using System;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IUserValidationRepository : IRepositoryBase<UserValidation, Guid>
    {
    }
}