using AslaveCare.Domain.Models.Core;
using System;
using System.Text.Json.Serialization;

namespace AslaveCare.Domain.Models.v1.TaskNote
{
    public class TaskNotePatchModel : EntityModel<Guid>
    {
        [JsonIgnore]
        public override Guid Id { get => base.Id; set => base.Id = value; }

        public string Text { get; set; }
        public bool Done { get; set; }
        public Guid UserId { get; set; }
    }
}
