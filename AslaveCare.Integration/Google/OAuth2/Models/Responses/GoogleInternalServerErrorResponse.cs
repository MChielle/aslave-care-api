using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.Google.OAuth2.Models.Responses
{
    internal class GoogleInternalServerErrorResponse : IResponseBase
    {
        public bool IsSuccess => false;
    }
}
