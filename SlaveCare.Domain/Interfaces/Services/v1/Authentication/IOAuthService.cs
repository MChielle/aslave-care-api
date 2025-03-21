using SlaveCare.Domain.Helpers;
using SlaveCare.Domain.Models.v1.SignIn;
using SlaveCare.Domain.Models.v1.SignUp;
using SlaveCare.Domain.Models.v1.User;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services.v1.Authentication
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