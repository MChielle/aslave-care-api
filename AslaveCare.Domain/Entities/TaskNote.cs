using AslaveCare.Domain.Entities.Core;
using System;

namespace AslaveCare.Domain.Entities
{
    public class TaskNote : Entity<Guid>
    {
        public string Text { get; set; }
        public bool Done { get; set; }
        public Guid UserId { get; set; }
        public User User { get; set; }
    }
}