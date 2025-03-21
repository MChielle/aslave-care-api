using Newtonsoft.Json;
using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.HttpSms.Responses
{
    public class HttpSmsOkGetPhonesResponse : IResponseBase
    {
        public bool IsSuccess => true;

        [JsonProperty("data")]
        internal OkGetData[] Data { get; set; }

        [JsonProperty("message")]
        internal string Message { get; set; }

        [JsonProperty("status")]
        internal string Status { get; set; }
    }

    public class OkGetData
    {
        [JsonProperty("id")]
        internal string? Id { get; set; }

        [JsonProperty("user_id")]
        internal string? User_id { get; set; }

        [JsonProperty("fcm_token")]
        internal string? Fcm_token { get; set; }

        [JsonProperty("phone_number")]
        internal string? Phone_number { get; set; }

        [JsonProperty("messages_per_minute")]
        internal int? Messages_per_minute { get; set; }

        [JsonProperty("max_send_attempts")]
        internal int? Max_send_attempts { get; set; }

        [JsonProperty("message_expiration_seconds")]
        internal int? Message_expiration_seconds { get; set; }

        [JsonProperty("created_at")]
        internal DateTime? Created_at { get; set; }

        [JsonProperty("updated_at")]
        internal DateTime? Updated_at { get; set; }
    }
}