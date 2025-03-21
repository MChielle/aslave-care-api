using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Extensions;
using System;
using System.Collections.Generic;

namespace SlaveCare.Infra.Data.Constants
{
    internal static class ConstantSeederRole
    {
        internal static List<(int Index, Guid Id, string Name, UserType Type)> Roles =>
            new()
            {
                new(1, Guid.Parse("E589A9E9-1BA9-46E8-8487-EC68B2F9EF76"), UserType.Master.GetDescription(), UserType.Master),
                new(3, Guid.Parse("574AC0D0-2E84-44D7-8949-A8169FA3BBFF"), UserType.Manager.GetDescription(), UserType.Manager),
            };
    }
}