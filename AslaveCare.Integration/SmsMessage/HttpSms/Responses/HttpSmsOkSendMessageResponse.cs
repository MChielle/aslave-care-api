using Newtonsoft.Json;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Integration.SmsMessage.HttpSms.Responses;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Responses
{
    internal class HttpSmsOkSendMessageResponse : IResponseBase
    {
        public bool IsSuccess => true;

        [JsonProperty("data")]
        internal OkSendData Data { get; set; }

        [JsonProperty("message")]
        internal string Message { get; set; }

        [JsonProperty("status")]
        internal string Status { get; set; }
    }

    internal class OkSendData
    {
        [JsonProperty("can_be_polled")]
        internal bool? Can_be_polled { get; set; }

        [JsonProperty("contact")]
        internal string? Contact { get; set; }

        [JsonProperty("content")]
        internal string? Content { get; set; }

        [JsonProperty("created_at")]
        internal DateTime? Created_at { get; set; }

        [JsonProperty("delivered_at")]
        internal DateTime? Delivered_at { get; set; }

        [JsonProperty("expired_at")]
        internal DateTime? Expired_at { get; set; }

        [JsonProperty("failed_at")]
        internal DateTime? Failed_at { get; set; }

        [JsonProperty("feilure_reason")]
        internal string? Failure_reason { get; set; }

        [JsonProperty("id")]
        internal string? Id { get; set; }

        [JsonProperty("last_attempted_at")]
        internal DateTime? Last_attempted_at { get; set; }

        [JsonProperty("max_send_attempts")]
        internal int? Max_send_attempts { get; set; }

        [JsonProperty("order_timestamp")]
        internal DateTime? Order_timestamp { get; set; }

        [JsonProperty("owner")]
        internal string? Owner { get; set; }

        [JsonProperty("received_at")]
        internal DateTime? Received_at { get; set; }

        [JsonProperty("request_received_at")]
        internal DateTime? Request_received_at { get; set; }

        [JsonProperty("scheduled_at")]
        internal DateTime? Scheduled_at { get; set; }

        [JsonProperty("send_attempt_count")]
        internal int? Send_attempt_count { get; set; }

        [JsonProperty("send_time")]
        internal int? Send_time { get; set; }

        [JsonProperty("sent_at")]
        internal DateTime? Sent_at { get; set; }

        [JsonProperty("status")]
        internal string? Status { get; set; }

        [JsonProperty("type")]
        internal string? Type { get; set; }

        [JsonProperty("updated_at")]
        internal DateTime? Updated_at { get; set; }

        [JsonProperty("user_id")]
        internal string? User_id { get; set; }
    }
}
