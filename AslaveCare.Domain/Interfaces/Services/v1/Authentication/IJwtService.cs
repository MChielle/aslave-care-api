using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Helpers;
using AslaveCare.Domain.Models.v1.SignIn;
using AslaveCare.Domain.Models.v1.SignUp;
using AslaveCare.Domain.Models.v1.User;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1.Authentication
{
    public interface IJwtService
    {
        Task<SignInAuthenticationModel> CreateSignInAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<SignInAuthenticationModel> CreateSignInAuthenticationPhoneNumberAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<SignInAuthenticationModel> CreateSignInAuthenticationSocialMediaAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null);

        Task<RefreshTokenData> ValidateRefreshTokenAsync(string refreshToken, Guid userId);

        bool ValidateAccessToken(string token, Guid userId);

        Task<SignUpAuthenticationModel> CreateSignUpAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds, RefreshTokenData refreshTokenData);

        Task<SignUpAuthenticationModel> CreateSignUpAuthenticationPhoneNumberAsync(UserModel userModel, double expirationTimeSeconds, RefreshTokenData refreshTokenData);

        Task<SignUpAuthenticationModel> CreateSignUpAuthenticationSocialMediaAsync(UserModel userModel, double expirationTimeSeconds, RefreshTokenData refreshTokenData);

        UserType? GetRoleFromToken(string jwtToken);


        Task<SignInRecoverPasswordAuthenticationModel> CreateRecoverPasswordAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds, RefreshTokenData refreshTokenData);

        JwtSecurityToken ReadJwt(string jwtToken);

        SignInSignUpAppleAutheicationModel ReadAppleAuthenticationJwt(string jwtToken);
        Guid GetUserIdFromToken(string jwtToken);
    }
}