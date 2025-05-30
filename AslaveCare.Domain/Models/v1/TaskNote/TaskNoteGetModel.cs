using AslaveCare.Domain.Models.Core;
using System;

namespace AslaveCare.Domain.Models.v1.TaskNote
{
    public class TaskNoteGetModel : EntityModel<Guid>
    {
        public string Text { get; set; }
        public bool Done { get; set; }
        public Guid UserId { get; set; }
    }
}