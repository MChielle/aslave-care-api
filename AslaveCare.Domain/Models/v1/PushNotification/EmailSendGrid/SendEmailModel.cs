namespace AslaveCare.Domain.Models.v1.PushNotification.EmailSendGrid
{
    public class SendEmailModel
    {
        public string FromEmail { get; set; }
        public string FromName { get; set; }
        public string ToEmail { get; set; }
        public string ToName { get; set; }
        public string Subject { get; set; }
        public string PlainTextContent { get; set; }
        public string HtmlContent { get; set; }
    }
}