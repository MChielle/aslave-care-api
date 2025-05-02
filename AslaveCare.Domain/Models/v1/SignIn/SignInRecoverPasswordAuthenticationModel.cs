using Newtonsoft.Json;

namespace AslaveCare.Domain.Models.v1.SignIn
{
    public class SignInRecoverPasswordAuthenticationModel
    {
        [JsonProperty("access_token")]
        public string AccessToken { get; set; }
    }
}
