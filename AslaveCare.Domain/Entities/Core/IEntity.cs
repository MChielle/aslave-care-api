namespace AslaveCare.Domain.Entities.Core
{
    public interface IEntity<TKey>
    {
        TKey Id { get; set; }

        //DateTime CreationDate { get; set; }

        //DateTime? DeletionDate { get; set; }

        //DateTime? LastChangeDate { get; set; }
    }
}
