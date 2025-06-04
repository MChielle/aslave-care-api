using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.Employee
{
    public class EmployeePatchModel : EntityModel<Guid>
    {
        public Guid? UserId { get; set; }
    }
}