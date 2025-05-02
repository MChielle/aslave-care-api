namespace AslaveCare.Integration.SmsMessage.HttpSms.Configuration
{
    public class HttpSmsConfiguration
    {
        public HttpSmsConfiguration(string httpSmsToken, string baseUrl, Dictionary<string, string> gatewayPhoneNumber)
        {
            HttpSmsToken = httpSmsToken;
            BaseUrl = baseUrl;
            GatewayPhoneNumber = gatewayPhoneNumber;
        }

        internal string HttpSmsToken { get; private set; }
        internal string BaseUrl { get; private set; }
        internal Dictionary<string, string> GatewayPhoneNumber { get; private set; }
    }
}
