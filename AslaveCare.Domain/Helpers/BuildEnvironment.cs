namespace AslaveCare.Domain.Helpers
{
    public static class BuildEnvironment
    {
        private static EnvironmentType _environment;

        static BuildEnvironment()
        {
            //Default to Test if not set
            _environment = EnvironmentType.Test;
        }

        public static void SetEnvironment(EnvironmentType environment) => _environment = environment;

        public static string GetShortEnvironmentName() =>
            _environment switch
            {
                EnvironmentType.Localhost => "dev",
                EnvironmentType.Development => "dev",
                EnvironmentType.Homologation => "homol",
                EnvironmentType.Production => "prod",
                _ => ""
            };
       

        public static bool IsProduction() => _environment == EnvironmentType.Production;
        public static bool IsTest() => _environment == EnvironmentType.Test;
        public static bool IsDevelopment() => _environment == EnvironmentType.Development;
        public static bool IsLocalhost() => _environment == EnvironmentType.Localhost;
    }
}