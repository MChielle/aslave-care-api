using System;

namespace AslaveCare.Domain.Helpers
{
    public class RefreshTokenData
    {
        public string RefreshToken { get; set; }

        public string key { get; set; }

        public DateTime FinalExpiration { get; set; }
    }
}
