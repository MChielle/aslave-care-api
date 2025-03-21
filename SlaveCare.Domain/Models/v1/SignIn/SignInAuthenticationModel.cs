using Newtonsoft.Json;
using SlaveCare.Domain.Models.v1.User;
using System;

namespace SlaveCare.Domain.Models.v1.SignIn
{
    public class SignInAuthenticationModel
    {
        public UserSignInModel User { get; set; }

        [JsonProperty("access_token")]
        public string AccessToken { get; set; }

        public DateTime AccessTokenExpiration { get; set; }

        [JsonProperty("refresh_token")]
        public string RefreshToken { get; set; }

        public DateTime RefreshTokenExpiration { get; set; }
    }
}