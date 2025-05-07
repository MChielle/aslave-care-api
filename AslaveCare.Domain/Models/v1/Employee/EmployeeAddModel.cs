using System;
using System.Text.Json.Serialization;
using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.SignUp;

namespace AslaveCare.Domain.Models.v1.Employee
{
    public class EmployeeAddModel : EntityModel<Guid>
    {
        [JsonIgnore]
        public override Guid Id { get => base.Id; set => base.Id = value; }

        public string Name { get; set; }
        public string About { get; set; }
        public string PhotoBase64String { get; set; }
        public decimal SplitPercentage { get; set; }

        [JsonIgnore]
        public Guid UserId { get; set; }

        public Guid StoreId { get; set; }
        public SignUpEmailModel SignUp { get; set; }
    }
}
