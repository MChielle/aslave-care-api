namespace AslaveCare.Integration.Google.OAuth2.Configurations
{
    public class GoogleOAuth2Configuration
    {
        public string _baseUrl { get; set; }

        public GoogleOAuth2Configuration(string baseUrl)
        {
            _baseUrl = baseUrl;
        }
    }
}