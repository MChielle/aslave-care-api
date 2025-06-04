using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Responses
{
    internal class HttpSmsUnprocessableEntityResponse : IResponseBase
    {
        public bool IsSuccess => false;
        internal UnprocessableData Data { get; set; }
        internal string? Message { get; set; }
        internal string? Status { get; set; }
    }

    internal class UnprocessableData
    {
        internal string[]? AdditionalProp1 { get; set; }
        internal string[]? AdditionalProp2 { get; set; }
        internal string[]? AdditionalProp3 { get; set; }
    }
}