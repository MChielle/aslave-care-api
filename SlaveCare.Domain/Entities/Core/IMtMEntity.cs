namespace SlaveCare.Domain.Entities.Core
{
    public interface IMtMEntity
    {
        bool Equals(object obj);

        int GetHashCode();
    }
}