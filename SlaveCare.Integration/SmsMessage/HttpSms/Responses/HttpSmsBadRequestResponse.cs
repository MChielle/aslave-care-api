using Newtonsoft.Json;
using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.HttpSms.Responses
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