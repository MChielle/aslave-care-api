using Newtonsoft.Json;

namespace SlaveCare.Domain.Models.v1.SignUp
{
    public class SignUpAuthenticationModel
    {
        [JsonProperty("access_token")]
        public string AccessToken { get; set; }
    }
}