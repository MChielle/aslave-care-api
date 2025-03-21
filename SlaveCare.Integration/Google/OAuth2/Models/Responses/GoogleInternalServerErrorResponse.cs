using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.Google.OAuth2.Models.Responses
{
    internal class GoogleInternalServerErrorResponse : IResponseBase
    {
        public bool IsSuccess => false;
    }
}