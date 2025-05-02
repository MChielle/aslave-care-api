using System.Web;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Integration.Google.OAuth2.Configurations;
using AslaveCare.Integration.Google.OAuth2.Interfaces;
using AslaveCare.Integration.Google.OAuth2.Models.Responses;
using AslaveCare.Integration.Google.OAuth2.Services.Base;

namespace AslaveCare.Integration.Google.OAuth2.Services
{
    public class GoogleOAuth2Service : GoogleServiceBase, IGoogleOAuth2Service
    {
        public GoogleOAuth2Service(GoogleOAuth2Configuration googleOAuth2Configuration)
            : base(googleOAuth2Configuration)
        {
        }

        public async Task<IResponseBase> ValidateGoogleTokenAuthentication(string token)
        {
            var url = CombineUrlPath(_baseUrl, "tokeninfo");
            var query = HttpUtility.ParseQueryString(string.Empty);

            query["access_token"] = token;

            if (query.HasKeys())
                url += "?" + query.ToString();

            var response = await _httpClient.GetAsync(url);

            var content = await response.Content.ReadAsStringAsync();

            return await GetHttpResponse<GoogleOkResponse>(response.StatusCode, content);
        }
    }
}
