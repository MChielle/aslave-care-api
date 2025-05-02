namespace AslaveCare.Domain.Configurations
{
    public class TokenConfigurations
    {
        public string Audience { get; set; }

        public string Issuer { get; set; }

        public int RefreshTokenValidity { get; set; }

        public int AccessTokenValidity { get; set; }
    }
}
