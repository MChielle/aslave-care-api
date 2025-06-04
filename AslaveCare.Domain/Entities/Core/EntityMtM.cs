namespace AslaveCare.Domain.Entities.Core
{
    public abstract class EntityMtM : IMtMEntity
    {
        public abstract override bool Equals(object obj);

        public abstract override int GetHashCode();
    }
}