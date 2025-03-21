using SlaveCare.Domain.Models.Core;
using SlaveCare.Domain.Models.v1.SignUp;
using System;
using System.Text.Json.Serialization;

namespace SlaveCare.Domain.Models.v1.Employee
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