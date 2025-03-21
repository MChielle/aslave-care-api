using SlaveCare.Domain.Models.Core;
using System;

namespace Appointment.Domain.Models.v1.Employee
{
    public class EmployeeGetWithoutSensitiveDataModel : EntityModel<Guid>
    {
        public string Name { get; set; }
        public string About { get; set; }
        public string PhotoPath { get; set; }
        public Guid StoreId { get; set; }
    }
}