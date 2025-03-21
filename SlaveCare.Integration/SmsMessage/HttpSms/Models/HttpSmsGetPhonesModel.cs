namespace SlaveCare.Integration.SmsMessage.HttpSms.Models
{
    public class HttpSmsGetPhonesModel
    {
        public int? Skip { get; set; }
        public string? Query { get; set; }
        public int? Limit { get; set; }
    }
}