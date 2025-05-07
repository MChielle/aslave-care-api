using Microsoft.Extensions.Primitives;
using System;
using System.IdentityModel.Tokens.Jwt;

namespace AslaveCare.Domain.Helpers
{
    public static class JWTHelper
    {
        public static string GetUniqueKeyFromToken(StringValues token)
        {
            string uniqueKey = default;

            if (String.IsNullOrEmpty(token))
                throw new ApplicationException("AccessToken não informado");

            var stream = token.ToString().Replace("Bearer ", "");
            var handler = new JwtSecurityTokenHandler();
            var tokenObject = handler.ReadToken(stream) as JwtSecurityToken;

            if (tokenObject.Payload.ContainsKey("User.Identity.UniqueKey"))
            {
                tokenObject.Payload.TryGetValue("User.Identity.UniqueKey", out var key);
                uniqueKey = key.ToString();
            }

            return uniqueKey;
        }
    }
}
