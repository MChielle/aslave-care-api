using Newtonsoft.Json;
using System.Net;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Integration.SmsMessage.HttpSms.Configuration;
using AslaveCare.Integration.SmsMessage.HttpSms.Responses;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Service.Base
{
    public class HttpSmsServiceBase
    {
        internal readonly HttpSmsConfiguration _httpSmsConfiguration;
        internal readonly HttpClient _client;

        internal HttpSmsServiceBase(HttpSmsConfiguration httpSmsConfiguration)
        {
            _httpSmsConfiguration = httpSmsConfiguration;
            _client = new HttpClient();
            _client.DefaultRequestHeaders.Add("x-api-key", _httpSmsConfiguration.HttpSmsToken);
        }

        internal string CombineUrlPath(params string[] paramsToCombine)
        {
            if (paramsToCombine.Length == 0) return string.Empty;
            var url = string.Join("/", paramsToCombine);
            return url.Replace("\\", "/");
        }

        internal async Task<IResponseBase> GetHttpSmsResponse<T>(HttpStatusCode statusCode, string content)
            where T : class, IResponseBase
        {
            switch (statusCode)
            {
                case HttpStatusCode.OK:
                    return JsonConvert.DeserializeObject<T>(content);

                case HttpStatusCode.NoContent:
                    return JsonConvert.DeserializeObject<T>(content);

                case HttpStatusCode.BadRequest:
                    return JsonConvert.DeserializeObject<HttpSmsBadRequestResponse>(content);

                case HttpStatusCode.Unauthorized:
                    return JsonConvert.DeserializeObject<HttpSmsUnauthorizedResponse>(content);

                case HttpStatusCode.UnprocessableEntity:
                    return JsonConvert.DeserializeObject<HttpSmsUnprocessableEntityResponse>(content);

                default:
                    return JsonConvert.DeserializeObject<HttpSmsInternalServerErrorResponse>(content);
            }
        }

        internal string GetPhoneGatewayByCountryId(string CountryId)
        {
            return _httpSmsConfiguration.GatewayPhoneNumber.GetValueOrDefault(CountryId);
        }
    }
}
