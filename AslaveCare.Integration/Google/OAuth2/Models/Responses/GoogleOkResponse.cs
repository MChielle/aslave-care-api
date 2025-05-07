﻿using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.Google.OAuth2.Models.Responses
{
    public class GoogleOkResponse : IResponseBase
    {
        public bool IsSuccess => true;
        public string issued_to { get; set; }
        public string audience { get; set; }
        public string user_id { get; set; }
        public string scope { get; set; }
        public int? expires_in { get; set; }
        public string email { get; set; }
        public bool? verified_email { get; set; }
        public string access_type { get; set; }
    }
}
