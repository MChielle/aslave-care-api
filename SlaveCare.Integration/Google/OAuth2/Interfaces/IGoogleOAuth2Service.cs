using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.Google.OAuth2.Interfaces
{
    public interface IGoogleOAuth2Service
    {
        Task<IResponseBase> ValidateGoogleTokenAuthentication(string token);
    }
}