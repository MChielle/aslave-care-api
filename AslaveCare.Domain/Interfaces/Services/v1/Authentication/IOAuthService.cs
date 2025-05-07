using System.Threading.Tasks;
using AslaveCare.Domain.Helpers;
using AslaveCare.Domain.Models.v1.SignIn;
using AslaveCare.Domain.Models.v1.SignUp;
using AslaveCare.Domain.Models.v1.User;

namespace AslaveCare.Domain.Interfaces.Services.v1.Authentication
{
    public interface IOAuthService
    {
        Task<SignUpAuthenticationModel> CreateSignUpAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<SignUpAuthenticationModel> CreateSignUpAuthenticationPhoneNumberAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<SignUpAuthenticationModel> CreateSignUpAuthenticationSocialMediaAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<SignInAuthenticationModel> CreateSignInAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<SignInAuthenticationModel> CreateSignInAuthenticationPhoneNumberAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<SignInAuthenticationModel> CreateSignInAuthenticationSocialMediaAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<SignInRecoverPasswordAuthenticationModel> CreateRecoverPasswordAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);
    }
}
