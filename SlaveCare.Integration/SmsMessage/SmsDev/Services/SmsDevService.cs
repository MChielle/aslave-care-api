using Newtonsoft.Json;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Integration.SmsMessage.SmsDev.Configuration;
using SlaveCare.Integration.SmsMessage.SmsDev.Interfaces;
using SlaveCare.Integration.SmsMessage.SmsDev.Models;
using SlaveCare.Integration.SmsMessage.SmsDev.Responses;

namespace SlaveCare.Integration.SmsMessage.SmsDev.Services
{
    //TODO: PADRONIZAR INTEGRAÇÂO
    public class SmsDevService : ISmsDevService
    {
        private readonly SmsDevConfiguration _smsDevConfiguration;
        private readonly HttpClient _client;

        public SmsDevService(SmsDevConfiguration smsDevConfiguration)
        {
            _smsDevConfiguration = smsDevConfiguration;
            _client = new HttpClient();
        }

        public async Task<IResponseBase> SendMessage(string toPhoneNumber, string message)
        {
            return await SendPushNotificationSmsAsync(new SmsDevSendMessageModel()
            {
                Key = _smsDevConfiguration.AccessKey,
                Type = 9,
                Number = toPhoneNumber,
                Msg = message
            });
        }

        private async Task<IResponseBase> SendPushNotificationSmsAsync(SmsDevSendMessageModel smsDevPushNotificationSmsModel)
        {
            var uri = new Uri(_smsDevConfiguration.BaseUrl + "send");
            var model = JsonConvert.SerializeObject(smsDevPushNotificationSmsModel);
            var parameters = JsonConvert.DeserializeObject<Dictionary<string, string>>(model);
            var content = new FormUrlEncodedContent(parameters);
            var response = await _client.PostAsync(uri, content);
            if (response.IsSuccessStatusCode)
                return new SmsDevOkResponse();
            else
                return new SmsDevBadRequestResponse();
        }
    }
}