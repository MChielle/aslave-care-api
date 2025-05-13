using AslaveCare.Domain.Responses.Interfaces;
using Newtonsoft.Json;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Responses
{
    internal class HttpSmsOkUpdatePhonesResponse : IResponseBase
    {
        public bool IsSuccess => true;

        [JsonProperty("data")]
        public OkUpdateData Data { get; set; }

        [JsonProperty("message")]
        public string? Message { get; set; }

        [JsonProperty("status")]
        public string? Status { get; set; }
    }

    public class OkUpdateData
    {
        [JsonProperty("created_at")]
        public DateTime? Created_at { get; set; }

        [JsonProperty("fcm_token")]
        public string? Fcm_token { get; set; }

        [JsonProperty("id")]
        public string? Id { get; set; }

        [JsonProperty("max_send_attempts")]
        public int? Max_send_attempts { get; set; }

        [JsonProperty("message_expiration_seconds")]
        public int? Message_expiration_seconds { get; set; }

        [JsonProperty("messages_per_minute")]
        public int? Messages_per_minute { get; set; }

        [JsonProperty("phone_number")]
        public string? Phone_number { get; set; }

        [JsonProperty("updated_at")]
        public DateTime? Updated_at { get; set; }

        [JsonProperty("user_id")]
        public string? User_id { get; set; }
    }
}