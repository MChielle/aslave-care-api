using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.Google.OAuth2.Models.Responses
{
    internal class GoogleBadRequestResponse : IResponseBase
    {
        public bool IsSuccess => false;
        public string error { get; set; }
        public string error_description { get; set; }
    }
}
