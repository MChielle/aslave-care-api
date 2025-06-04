using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Integration.Google.OAuth2.Configurations;
using AslaveCare.Integration.Google.OAuth2.Models.Responses;
using Newtonsoft.Json;
using System.Net;

namespace AslaveCare.Integration.Google.OAuth2.Services.Base
{
    public class GoogleServiceBase
    {
        internal readonly string _baseUrl;

        internal readonly HttpClient _httpClient;

        internal GoogleServiceBase(GoogleOAuth2Configuration googleOAuth2Configuration)
        {
            _baseUrl = googleOAuth2Configuration._baseUrl;
            _httpClient = new HttpClient();
        }

        internal async Task<IResponseBase> GetHttpResponse<T>(HttpStatusCode statusCode, string content)
            where T : class, IResponseBase
        {
            switch (statusCode)
            {
                case HttpStatusCode.OK:
                    return JsonConvert.DeserializeObject<T>(content);

                case HttpStatusCode.BadRequest:
                    return JsonConvert.DeserializeObject<GoogleBadRequestResponse>(content);

                default:
                    return JsonConvert.DeserializeObject<GoogleInternalServerErrorResponse>(content);
            }
        }

        internal string CombineUrlPath(params string[] paramsToCombine)
        {
            if (paramsToCombine.Length == 0) return string.Empty;
            var url = string.Join("/", paramsToCombine);
            return url.Replace("\\", "/");
        }
    }
}