using Newtonsoft.Json;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Integration.SmsMessage.HttpSms.Configuration;
using SlaveCare.Integration.SmsMessage.HttpSms.Interfaces;
using SlaveCare.Integration.SmsMessage.HttpSms.Models;
using SlaveCare.Integration.SmsMessage.HttpSms.Responses;
using SlaveCare.Integration.SmsMessage.HttpSms.Service.Base;
using System.Text;
using System.Web;

namespace SlaveCare.Integration.SmsMessage.HttpSms.Service
{
    //TODO: Separar service por contexto
    public class HttpSmsService : HttpSmsServiceBase, IHttpSmsService
    {
        public HttpSmsService(HttpSmsConfiguration httpSmsConfiguration) : base(httpSmsConfiguration)
        {
        }

        public async Task<IResponseBase> SendMessage(HttpSmsSendMessageModel model)
        {
            model.From = GetPhoneGatewayByCountryId(model.CountryId);

            if (string.IsNullOrEmpty(model.From)) return new HttpSmsBadRequestResponse
            {
                Message = ConstantMessages.CRUD_INVALID_PARAMETER
            };

            var response = await _client.PostAsync(
                CombineUrlPath(_httpSmsConfiguration.BaseUrl, "messages/send"),
                new StringContent(
                    JsonConvert.SerializeObject(new
                    {
                        model.From,
                        model.To,
                        model.Content,
                    }),
                    Encoding.UTF8,
                    "application/json"
                )
            );

            var content = await response.Content.ReadAsStringAsync();

            return await GetHttpSmsResponse<HttpSmsOkSendMessageResponse>(response.StatusCode, content);
        }

        public async Task<IResponseBase> GetPhones(HttpSmsGetPhonesModel model)
        {
            var uri = CombineUrlPath(_httpSmsConfiguration.BaseUrl, "Phones");

            var query = HttpUtility.ParseQueryString(string.Empty);

            if (model.Skip != null) query[nameof(HttpSmsGetPhonesModel.Skip)] = model.Skip.ToString();
            if (model.Limit != null) query[nameof(HttpSmsGetPhonesModel.Limit)] = model.Limit.ToString();
            if (model.Query != null) query[nameof(HttpSmsGetPhonesModel.Query)] = model.Query.ToString();

            if (query.HasKeys())
                uri = uri + "?" + query.ToString();

            var response = await _client.GetAsync(uri);

            var content = await response.Content.ReadAsStringAsync();

            return await GetHttpSmsResponse<HttpSmsOkGetPhonesResponse>(response.StatusCode, content);
        }

        public async Task<IResponseBase> AddOrUpdatePhones(HttpSmsUpsertPhonesModel model)
        {
            var uri = CombineUrlPath(_httpSmsConfiguration.BaseUrl, "Phones");

            var response = await _client.PutAsync(
                uri,
                new StringContent(
                    JsonConvert.SerializeObject(new
                    {
                        model.Messages_per_minute,
                        model.Max_send_attempts,
                        model.Message_expiration_seconds,
                        model.Phone_number,
                        model.Fcm_token
                    }),
                    Encoding.UTF8,
                    "application/json"
                )
            );

            var content = await response.Content.ReadAsStringAsync();

            return await GetHttpSmsResponse<HttpSmsOkUpdatePhonesResponse>(response.StatusCode, content);
        }

        public async Task<IResponseBase> DeletePhones(HttpSmsDeletePhonesModel model)
        {
            var uri = CombineUrlPath(_httpSmsConfiguration.BaseUrl, $"Phones/{model.PhoneId}");

            var response = await _client.DeleteAsync(uri);

            var content = await response.Content.ReadAsStringAsync();

            return await GetHttpSmsResponse<HttpSmsNoContentResponse>(response.StatusCode, content);
        }
    }
}