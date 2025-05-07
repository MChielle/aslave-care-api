using Newtonsoft.Json;
using System.Text;
using System.Web;
using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Integration.SmsMessage.HttpSms.Configuration;
using AslaveCare.Integration.SmsMessage.HttpSms.Interfaces;
using AslaveCare.Integration.SmsMessage.HttpSms.Models;
using AslaveCare.Integration.SmsMessage.HttpSms.Responses;
using AslaveCare.Integration.SmsMessage.HttpSms.Service.Base;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Service
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
