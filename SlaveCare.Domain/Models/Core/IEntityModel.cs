namespace SlaveCare.Domain.Models.Core
{
    public interface IEntityModel<TKey>
    {
        TKey Id { get; set; }
    }
}