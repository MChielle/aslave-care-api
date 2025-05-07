namespace AslaveCare.Integration.SmsMessage.HttpSms.Models
{
    public class HttpSmsSendMessageModel
    {
        public string From { get; set; }
        public string To { get; set; }
        public string Content { get; set; }
        public string CountryId { get; set; }
    }
}
