using AslaveCare.Domain.Models.v1.SignIn;
using AslaveCare.Domain.Responses;
using Newtonsoft.Json;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace AslaveCare.IntegrationTests.Fixtures
{
    public class AuthenticationFixture
    {
        public static AuthenticationHeaderValue AuthenticationHeader { get; set; }

        public async static Task BuildAuthenticationHeader(HttpClient httpClient)
        {
            var requestModel = new SignInEmailRequestModel
            {
                Email = "teste@teste.com",
                Password = "123456"
            };

            var content = new StringContent(JsonConvert.SerializeObject(requestModel), null, "application/json");
            httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = await httpClient.PostAsync("/api/v1/signin/email", content);
            response.EnsureSuccessStatusCode();
            var responseString = await response.Content.ReadAsStringAsync();
            var responseObject = JsonConvert.DeserializeObject<OkResponse<SignInAuthenticationModel>>(responseString);
            AuthenticationHeader = new AuthenticationHeaderValue("Bearer", responseObject.Data.AccessToken);
        }
    }
}