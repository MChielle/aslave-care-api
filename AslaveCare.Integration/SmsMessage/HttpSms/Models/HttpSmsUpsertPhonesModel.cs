using Newtonsoft.Json;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Models
{
    public class HttpSmsUpsertPhonesModel
    {
        [JsonProperty("fcm_token")]
        public string Fcm_token { get; set; }

        [JsonProperty("max_send_attempts")]
        public int Max_send_attempts { get; set; }

        [JsonProperty("message_expiration_seconds")]
        public int Message_expiration_seconds { get; set; }

        [JsonProperty("messages_per_minute")]
        public int Messages_per_minute { get; set; }

        [JsonProperty("phone_number")]
        public string Phone_number { get; set; }
    }
}
