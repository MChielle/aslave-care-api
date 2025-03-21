using SlaveCare.Domain.Helpers;
using SlaveCare.Domain.Interfaces.Services.v1.Authentication;
using SlaveCare.Domain.Models.v1.SignIn;
using SlaveCare.Domain.Models.v1.SignUp;
using SlaveCare.Domain.Models.v1.User;
using System.Threading.Tasks;

namespace SlaveCare.Service.Services.v1.Authentication
{
    public class OAuthService : IOAuthService
    {
        private readonly IJwtService _jwtService;

        public OAuthService(IJwtService jwtService)
        {
            _jwtService = jwtService;
        }

        public async Task<SignInAuthenticationModel> CreateSignInAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            return await _jwtService.CreateSignInAuthenticationEmailAsync(userModel, expirationTimeSeconds, refreshTokenData);
        }

        public async Task<SignInAuthenticationModel> CreateSignInAuthenticationPhoneNumberAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            return await _jwtService.CreateSignInAuthenticationPhoneNumberAsync(userModel, expirationTimeSeconds, refreshTokenData);
        }

        public async Task<SignInAuthenticationModel> CreateSignInAuthenticationSocialMediaAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            return await _jwtService.CreateSignInAuthenticationSocialMediaAsync(userModel, expirationTimeSeconds, refreshTokenData);
        }

        public async Task<SignUpAuthenticationModel> CreateSignUpAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            return await _jwtService.CreateSignUpAuthenticationEmailAsync(userModel, expirationTimeSeconds, refreshTokenData);
        }

        public async Task<SignUpAuthenticationModel> CreateSignUpAuthenticationPhoneNumberAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            return await _jwtService.CreateSignUpAuthenticationPhoneNumberAsync(userModel, expirationTimeSeconds, refreshTokenData);
        }

        public async Task<SignUpAuthenticationModel> CreateSignUpAuthenticationSocialMediaAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            return await _jwtService.CreateSignUpAuthenticationSocialMediaAsync(userModel, expirationTimeSeconds, refreshTokenData);
        }

        public async Task<SignInRecoverPasswordAuthenticationModel> CreateRecoverPasswordAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            return await _jwtService.CreateRecoverPasswordAuthenticationEmailAsync(userModel, expirationTimeSeconds, refreshTokenData);
        }
    }
}