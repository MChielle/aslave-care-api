using SlaveCare.Domain.Models.Core;
using System;

namespace SlaveCare.Domain.Models.v1.Employee
{
    public class EmployeePatchModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string About { get; set; }
        public bool? Disable { get; set; }
        public decimal SplitPercentage { get; set; }
        public Guid? UserId { get; set; }
    }
}