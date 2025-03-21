using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SlaveCare.Domain.Entities.Core
{
    public class Entity<TKey> : IEntity<TKey>
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public virtual TKey Id { get; set; }

        public DateTime CreationDate { get; set; }

        public DateTime? DeletionDate { get; set; }

        public DateTime? LastChangeDate { get; set; }
    }
}