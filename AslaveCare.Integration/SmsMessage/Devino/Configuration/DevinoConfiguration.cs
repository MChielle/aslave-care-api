namespace AslaveCare.Integration.SmsMessage.Devino.Configuration
{
    public class DevinoConfiguration
    {
        public DevinoConfiguration(string baseUrl, string accessKey, string applicationName)
        {
            BaseUrl = baseUrl;
            AccessKey = accessKey;
            ApplicationName = applicationName;
        }

        internal string ApplicationName { get; private set; }
        internal string BaseUrl { get; private set; }
        internal string AccessKey { get; private set; }
    }
}
