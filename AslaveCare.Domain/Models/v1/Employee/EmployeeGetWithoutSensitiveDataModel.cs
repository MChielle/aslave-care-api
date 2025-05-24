using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;
using System;

namespace AslaveCare.Domain.Models.v1.Employee
{
    public class EmployeeGetWithoutSensitiveDataModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string PhotoPath { get; set; }
        public Guid UserId { get; set; }
        public UserGetModel User { get; set; }
    }
}