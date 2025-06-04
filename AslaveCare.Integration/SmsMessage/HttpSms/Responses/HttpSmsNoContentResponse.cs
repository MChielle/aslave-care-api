using AslaveCare.Domain.Responses.Interfaces;
using Newtonsoft.Json;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Responses
{
    internal class HttpSmsNoContentResponse : IResponseBase
    {
        public bool IsSuccess => true;

        [JsonProperty("message")]
        public string? Message { get; set; }

        [JsonProperty("status")]
        public string? Status { get; set; }
    }
}