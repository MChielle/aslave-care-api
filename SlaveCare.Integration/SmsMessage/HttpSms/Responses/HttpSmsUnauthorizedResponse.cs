using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.HttpSms.Responses
{
    internal class HttpSmsUnauthorizedResponse : IResponseBase
    {
        public bool IsSuccess => false;
        internal string? Data { get; set; }
        internal string? Message { get; set; }
        internal string? Status { get; set; }
    }
}