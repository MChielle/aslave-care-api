namespace AslaveCare.Integration.SmsMessage.SmsDev.Configuration
{
    public class SmsDevConfiguration
    {
        public SmsDevConfiguration(string baseUrl, string accessKey)
        {
            BaseUrl = baseUrl;
            AccessKey = accessKey;
        }

        internal string BaseUrl { get; private set; }
        internal string AccessKey { get; private set; }
    }
}
