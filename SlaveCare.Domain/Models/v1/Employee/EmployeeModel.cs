using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.User;
using System;

namespace SlaveCare.Domain.Models.v1.Employee
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