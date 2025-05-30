using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.User;
using System;

namespace AslaveCare.Domain.Models.v1.TaskNote
{
    public class TaskNoteModel : EntityModel<Guid>
    {
        public string Text { get; set; }
        public bool Done { get; set; }
        public Guid UserId { get; set; }
        public UserModel User { get; set; }
    }
}
