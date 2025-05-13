using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;
using System;

namespace AslaveCare.Domain.Models.v1.Employee
{
    public class EmployeeModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string About { get; set; }
        public string PhotoPath { get; set; }
        public bool Disable { get; set; }
        public decimal SplitPercentage { get; set; }
        public Guid UserId { get; set; }
        public UserModel User { get; set; }
    }
}