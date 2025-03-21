using Newtonsoft.Json;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Integration.SmsMessage.Devino.Configuration;
using SlaveCare.Integration.SmsMessage.Devino.Interfaces;
using SlaveCare.Integration.SmsMessage.Devino.Models;
using SlaveCare.Integration.SmsMessage.Devino.Responses;
using System.Net.Http.Headers;

namespace SlaveCare.Integration.SmsMessage.Devino.Services
{
    public class DevinoService : IDevinoService
    {
        private readonly HttpClient _client;
        private readonly DevinoConfiguration _devinoConfiguration;

        public DevinoService(DevinoConfiguration devinoConfiguration)
        {
            _client = new HttpClient();
            _devinoConfiguration = devinoConfiguration;
        }

        public async Task<IResponseBase> SendMessage(string toPhoneNumber, string message)
        {
            var sms = new List<DevinoMessageModel>();
            sms.Add(new DevinoMessageModel()
            {
                from = _devinoConfiguration.ApplicationName,
                to = toPhoneNumber,
                text = message
            });

            return await SendPushNotificationSmsAsync(new DevinoSendMessageModel()
            {
                messages = sms
            });
        }

        private async Task<IResponseBase> SendPushNotificationSmsAsync(DevinoSendMessageModel smsDevinoPushNotificationSmsModel)
        {
            var uri = new Uri(_devinoConfiguration.BaseUrl);
            var model = JsonConvert.SerializeObject(smsDevinoPushNotificationSmsModel);
            var content = new StringContent(model, null, "application/json");
            _client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Key", _devinoConfiguration.AccessKey);
            var response = await _client.PostAsync(uri, content);
            if (response.IsSuccessStatusCode)
                return new DevinoOkResponse();
            else
                return new DevinoBadRequestResponse();
        }
    }
}