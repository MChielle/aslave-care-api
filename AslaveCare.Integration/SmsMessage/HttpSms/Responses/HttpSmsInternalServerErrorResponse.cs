using AslaveCare.Domain.Responses.Interfaces;
using Newtonsoft.Json;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Responses
{
    internal class HttpSmsInternalServerErrorResponse : IResponseBase
    {
        public bool IsSuccess => false;

        [JsonProperty("message")]
        internal string? Message { get; set; }

        [JsonProperty("status")]
        internal string? Status { get; set; }
    }
}