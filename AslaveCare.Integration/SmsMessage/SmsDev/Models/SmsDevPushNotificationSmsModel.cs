namespace AslaveCare.Integration.SmsMessage.SmsDev.Models
{
    /// <summary>
    /// https://www.smsdev.com.br/envio-sms/
    /// </summary>
    public class SmsDevSendMessageModel
    {
        public string Key { get; set; }
        public int Type { get; set; }
        public string Number { get; set; }
        public string Msg { get; set; }
    }
}
