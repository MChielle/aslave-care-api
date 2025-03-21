namespace SlaveCare.Domain.Models.Core
{
    public class EntityModel<TKey> : IEntityModel<TKey>
    {
        public virtual TKey Id { get; set; }
    }
}