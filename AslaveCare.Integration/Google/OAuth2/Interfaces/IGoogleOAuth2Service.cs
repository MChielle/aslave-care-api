using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.Google.OAuth2.Interfaces
{
    public interface IGoogleOAuth2Service
    {
        Task<IResponseBase> ValidateGoogleTokenAuthentication(string token);
    }
}