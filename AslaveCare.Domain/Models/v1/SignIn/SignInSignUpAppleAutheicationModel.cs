using Newtonsoft.Json;

namespace AslaveCare.Domain.Models.v1.SignIn
{
    public class SignInSignUpAppleAutheicationModel
    {
        [JsonProperty("iss")]
        public string UrlOrigem { get; set; }

        [JsonProperty("aud")]
        public string AppOrigem { get; set; }

        [JsonProperty("exp")]
        public int? Expiration { get; set; }

        [JsonProperty("iat")]
        public int? StartTime { get; set; }

        [JsonProperty("sub")]
        public string AppleUserId { get; set; }

        [JsonProperty("c_hash")]
        public string CHash { get; set; }

        [JsonProperty("email")]
        public string Email { get; set; }

        [JsonProperty("email_verified")]
        public bool? EmailVerified { get; set; }

        [JsonProperty("is_private_email")]
        public string IsPrivateEmail { get; set; }

        [JsonProperty("auth_time")]
        public int? AuthenticationTime { get; set; }

        [JsonProperty("nonce_supported")]
        public bool? NonceSupported { get; set; }

        [JsonProperty("real_user_status")]
        public int? RealUserStatus { get; set; }
    }
}