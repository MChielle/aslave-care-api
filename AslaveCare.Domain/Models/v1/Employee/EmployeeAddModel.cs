﻿using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.SignUp;
using System;
using System.Text.Json.Serialization;

namespace AslaveCare.Domain.Models.v1.Employee
{
    public class EmployeeAddModel : EntityModel<Guid>
    {
        [JsonIgnore]
        public override Guid Id { get => base.Id; set => base.Id = value; }

        public string PhotoBase64String { get; set; }

        [JsonIgnore]
        public Guid UserId { get; set; }

        public Guid StoreId { get; set; }
        public SignUpGenericModel SignUp { get; set; }
    }
}