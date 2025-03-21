namespace SlaveCare.Domain.Helpers
{
    public static class EnvironmentHelper
    {
        public static EnvironmentType Environment { get; set; }

        public static string GetShortEnvironmentName() =>
            Environment switch
            {
                EnvironmentType.Localhost => "dev",
                EnvironmentType.Development => "dev",
                EnvironmentType.Homologation => "homol",
                EnvironmentType.Production => "prod",
                _ => ""
            };
    }
}