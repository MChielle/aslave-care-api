using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;
using System;

namespace AslaveCare.Domain.Models.v1.Employee
{
    public class EmployeeUpdateModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string About { get; set; }
        public string PhotoBase64String { get; set; }
        public bool Disable { get; set; }
        public decimal SplitPercentage { get; set; }
        public Guid UserId { get; set; }
        public UserUpdateModel User { get; set; }
    }
}