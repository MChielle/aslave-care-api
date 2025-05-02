using Newtonsoft.Json;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Responses
{
    internal class HttpSmsBadRequestResponse : IResponseBase
    {
        public bool IsSuccess => false;

        [JsonProperty("data")]
        internal string? Data { get; set; }

        [JsonProperty("message")]
        internal string? Message { get; set; }

        [JsonProperty("status")]
        internal string? Status { get; set; }
    }
}
