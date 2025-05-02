using Newtonsoft.Json;

namespace AslaveCare.Domain.Models.v1.SignUp
{
    public class SignUpAuthenticationModel
    {
        [JsonProperty("access_token")]
        public string AccessToken { get; set; }
    }
}
