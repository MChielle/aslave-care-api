namespace AslaveCare.Domain.Entities.Constants
{
    public static class UserType
    {
        public const string Master = "Master";
        public const string Manager = "Manager";
        public const string Employee = "Employee";
        public const string All = Master + "," + Manager + "," + Employee;
        public const string None = "None";
    }
}