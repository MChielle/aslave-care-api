using Microsoft.Extensions.Caching.Distributed;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;
using System.Threading.Tasks;
using AslaveCare.Domain.Configurations;
using AslaveCare.Domain.Helpers;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Models.v1.SignIn;
using AslaveCare.Domain.Models.v1.SignUp;
using AslaveCare.Domain.Models.v1.User;

namespace AslaveCare.Service.Services.v1.Authentication
{
    //TODO: Tratar retornos das funções
    public class JwtService : IJwtService
    {
        private readonly SigningConfigurations _signingConfigurations;
        private readonly TokenConfigurations _tokenConfigurations;
        private readonly IDistributedCache _cache;

        public JwtService(SigningConfigurations signingConfigurations,
                TokenConfigurations tokenConfigurations,
                IDistributedCache cache)
        {
            _signingConfigurations = signingConfigurations;
            _tokenConfigurations = tokenConfigurations;
            _cache = cache;
        }

        public async Task<SignUpAuthenticationModel> CreateSignUpAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds, RefreshTokenData refreshTokenData)
        {
            try
            {
                var claimsIdentity = EmailAuthenticationIdentity(userModel);

                return await CreateSignUpAuthentication(userModel, claimsIdentity, expirationTimeSeconds);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Falha ao criar autenticação. Erro: {ex.Message}");
            }
        }

        public async Task<SignUpAuthenticationModel> CreateSignUpAuthenticationPhoneNumberAsync(UserModel userModel, double expirationTimeSeconds, RefreshTokenData refreshTokenData)
        {
            try
            {
                var claimsIdentity = PhoneNumberAuthenticationIdentity(userModel);

                return await CreateSignUpAuthentication(userModel, claimsIdentity, expirationTimeSeconds);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Falha ao criar autenticação. Erro: {ex.Message}");
            }
        }

        public async Task<SignUpAuthenticationModel> CreateSignUpAuthenticationSocialMediaAsync(UserModel userModel, double expirationTimeSeconds, RefreshTokenData refreshTokenData)
        {
            try
            {
                var claimsIdentity = EmailAuthenticationIdentity(userModel);

                return await CreateSignUpAuthentication(userModel, claimsIdentity, expirationTimeSeconds);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Falha ao criar autenticação. Erro: {ex.Message}");
            }
        }

        public async Task<SignInAuthenticationModel> CreateSignInAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            try
            {
                var claimsIdentity = EmailAuthenticationIdentity(userModel);

                return await CreateSignInAuthentication(userModel, claimsIdentity, expirationTimeSeconds, refreshTokenData);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Falha ao criar autenticação. Erro: {ex.Message}");
            }
        }

        public async Task<SignInAuthenticationModel> CreateSignInAuthenticationPhoneNumberAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            try
            {
                var claimsIdentity = PhoneNumberAuthenticationIdentity(userModel);

                return await CreateSignInAuthentication(userModel, claimsIdentity, expirationTimeSeconds, refreshTokenData);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Falha ao criar autenticação. Erro: {ex.Message}");
            }
        }

        public async Task<SignInAuthenticationModel> CreateSignInAuthenticationSocialMediaAsync(UserModel userModel, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            try
            {
                var claimsIdentity = EmailAuthenticationIdentity(userModel);

                return await CreateSignInAuthentication(userModel, claimsIdentity, expirationTimeSeconds, refreshTokenData);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Falha ao criar autenticação. Erro: {ex.Message}");
            }
        }

        public async Task<RefreshTokenData> ValidateRefreshTokenAsync(string refreshToken, Guid userId)
        {
            return await GetRefreshTokenFromRedis(refreshToken, userId);
        }

        private async Task<RefreshTokenData> GetRefreshTokenFromRedis(string refreshToken, Guid userId)
        {
            var storedToken = await _cache.GetStringAsync(refreshToken);
            if (string.IsNullOrEmpty(storedToken))
            {
                return null;
            }

            var refreshTokenData = JsonConvert.DeserializeObject<RefreshTokenData>(storedToken);

            if (refreshTokenData.key.Equals(userId.ToString()))
            {
                return refreshTokenData;
            }

            return null;
        }

        private ClaimsIdentity EmailAuthenticationIdentity(UserModel userModel)
        {
            ClaimsIdentity identity = new ClaimsIdentity(
                new GenericIdentity(userModel.Email, "Login"),
                new[] { new Claim("User.Identity.UniqueKey", userModel.Id.ToString()) }
            );

            var roles = userModel.UserRoles.Select(x => x.Role).ToList();

            if (roles.Any())
                foreach (var role in roles)
                    identity.AddClaim(new Claim(ClaimTypes.Role, role.Name));

            return identity;
        }

        private ClaimsIdentity PhoneNumberAuthenticationIdentity(UserModel userModel)
        {
            ClaimsIdentity identity = new ClaimsIdentity(
                new GenericIdentity(userModel.PhoneNumber, "Login"),
                new[] { new Claim("User.Identity.UniqueKey", userModel.Id.ToString()) }
            );

            var roles = userModel.UserRoles.Select(x => x.Role).ToList();

            if (roles.Any())
                foreach (var role in roles)
                    identity.AddClaim(new Claim(ClaimTypes.Role, role.Name));

            return identity;
        }

        private async Task<SignInAuthenticationModel> CreateSignInAuthentication(UserModel userModel, ClaimsIdentity claimsIdentity, double expirationTimeSeconds = 0, RefreshTokenData refreshTokenData = null)
        {
            var creationDate = DateTime.UtcNow;
            var expirationDate = creationDate + TimeSpan.FromSeconds(expirationTimeSeconds == 0 ? _tokenConfigurations.AccessTokenValidity : expirationTimeSeconds);
            var finalExpirationDate = creationDate + TimeSpan.FromSeconds(_tokenConfigurations.RefreshTokenValidity);

            string refreshToken = Guid.NewGuid().ToString("N");

            if (refreshTokenData != null)
            {
                finalExpirationDate = refreshTokenData.FinalExpiration;
                refreshToken = refreshTokenData.RefreshToken;
            }

            string accessToken = GenerateAccessToken(claimsIdentity, creationDate, expirationDate);

            await SendAccessTokenToRedis(accessToken, userModel.Id, expirationDate);
            await SendRefreshTokenToRedis(refreshToken, userModel.Id, finalExpirationDate);

            var authenticationModel = new SignInAuthenticationModel()
            {
                AccessToken = accessToken,
                AccessTokenExpiration = expirationDate,
                RefreshToken = refreshToken,
                RefreshTokenExpiration = finalExpirationDate
            };

            return authenticationModel;
        }

        private async Task<SignUpAuthenticationModel> CreateSignUpAuthentication(UserModel userModel, ClaimsIdentity claimsIdentity, double expirationTimeSeconds)
        {
            var creationDate = DateTime.UtcNow;
            var expirationDate = creationDate + TimeSpan.FromSeconds(expirationTimeSeconds == 0 ? _tokenConfigurations.AccessTokenValidity : expirationTimeSeconds);

            string accessToken = GenerateAccessToken(claimsIdentity, creationDate, expirationDate);

            await SendAccessTokenToRedis(accessToken, userModel.Id, expirationDate);

            var authenticationModel = new SignUpAuthenticationModel()
            {
                AccessToken = accessToken,
            };

            return authenticationModel;
        }

        public bool ValidateAccessToken(string token, Guid userId)
        {
            var storedToken = GetAccessTokenFromRedis(userId);
            if (storedToken == null)
                return false;

            return token.Equals(storedToken);
        }

        private string GetAccessTokenFromRedis(Guid userId)
        {
            var storedToken = _cache.GetString(userId.ToString());
            if (string.IsNullOrEmpty(storedToken))
            {
                return null;
            }

            return storedToken;
        }

        private string GenerateAccessToken(ClaimsIdentity identity, DateTime creationDate, DateTime expirationDate)
        {
            var handler = new JwtSecurityTokenHandler();
            var securityToken = handler.CreateToken(new SecurityTokenDescriptor
            {
                Issuer = _tokenConfigurations.Issuer,
                Audience = _tokenConfigurations.Audience,
                SigningCredentials = _signingConfigurations.SigningCredentials,
                Subject = identity,
                NotBefore = creationDate,
                Expires = expirationDate
            });

            return handler.WriteToken(securityToken);
        }

        public Guid GetUserIdFromToken(string jwtToken)
        {
            jwtToken = jwtToken.Replace("Bearer ", string.Empty);
            var handler = new JwtSecurityTokenHandler();
            if (!handler.CanReadToken(jwtToken)) return Guid.Empty;
            var jsonToken = handler.ReadJwtToken(jwtToken);
            var UserId = jsonToken.Claims.Where(x => x.Type == "User.Identity.UniqueKey").First().Value;
            return new Guid(UserId);
        }

        public JwtSecurityToken ReadJwt(string jwtToken)
        {
            var handler = new JwtSecurityTokenHandler();
            if (!handler.CanReadToken(jwtToken)) return null;
            return handler.ReadJwtToken(jwtToken);
        }

        private async Task SendAccessTokenToRedis(string accessToken, Guid userId, DateTime finalExpiration)
        {
            var cacheOptions = new DistributedCacheEntryOptions();
            cacheOptions.SetAbsoluteExpiration(finalExpiration);

            await _cache.SetStringAsync(userId.ToString(), accessToken, cacheOptions);
        }

        private async Task SendRefreshTokenToRedis(string refreshToken, Guid userId, DateTime finalExpiration)
        {
            var cacheOptions = new DistributedCacheEntryOptions();
            cacheOptions.SetAbsoluteExpiration(finalExpiration);
            var refreshTokenData = new RefreshTokenData
            {
                RefreshToken = refreshToken,
                key = userId.ToString(),
                FinalExpiration = finalExpiration
            };

            await _cache.SetStringAsync(refreshToken, JsonConvert.SerializeObject(refreshTokenData), cacheOptions);
        }

        public async Task<SignInRecoverPasswordAuthenticationModel> CreateRecoverPasswordAuthenticationEmailAsync(UserModel userModel, double expirationTimeSeconds, RefreshTokenData refreshTokenData)
        {
            try
            {
                var claimsIdentity = EmailAuthenticationIdentity(userModel);

                return await CreateRecoverPasswordAuthentication(userModel, claimsIdentity, expirationTimeSeconds);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Falha ao criar autenticação. Erro: {ex.Message}");
            }
        }

        private async Task<SignInRecoverPasswordAuthenticationModel> CreateRecoverPasswordAuthentication(UserModel userModel, ClaimsIdentity claimsIdentity, double expirationTimeSeconds)
        {
            var creationDate = DateTime.UtcNow;
            var expirationDate = creationDate + TimeSpan.FromSeconds(expirationTimeSeconds == 0 ? _tokenConfigurations.AccessTokenValidity : expirationTimeSeconds);

            string accessToken = GenerateAccessToken(claimsIdentity, creationDate, expirationDate);

            await SendAccessTokenToRedis(accessToken, userModel.Id, expirationDate);

            var authenticationModel = new SignInRecoverPasswordAuthenticationModel()
            {
                AccessToken = accessToken,
            };

            return authenticationModel;
        }

        public SignInSignUpAppleAutheicationModel ReadAppleAuthenticationJwt(string jwtToken)
        {
            var jsonToken = ReadJwt(jwtToken);
            if (jsonToken == null) return null;

            var model = new SignInSignUpAppleAutheicationModel();

            int.TryParse(jsonToken.Claims.FirstOrDefault(x => x.Type == "exp")?.Value, out var expiration);
            int.TryParse(jsonToken.Claims.FirstOrDefault(x => x.Type == "iat")?.Value, out var startTime);
            bool.TryParse(jsonToken.Claims.FirstOrDefault(x => x.Type == "email_verified")?.Value, out var emailVerified);
            int.TryParse(jsonToken.Claims.FirstOrDefault(x => x.Type == "auth_time")?.Value, out var authenticationTime);
            bool.TryParse(jsonToken.Claims.FirstOrDefault(x => x.Type == "nonce_supported")?.Value, out var nonceSupported);
            int.TryParse(jsonToken.Claims.FirstOrDefault(x => x.Type == "real_user_status")?.Value, out var realUserStatus);

            return new SignInSignUpAppleAutheicationModel
            {
                UrlOrigem = jsonToken.Claims.FirstOrDefault(x => x.Type == "iss").Value,
                AppOrigem = jsonToken.Claims.FirstOrDefault(x => x.Type == "aud").Value,
                Expiration = expiration,
                StartTime = startTime,
                AppleUserId = jsonToken.Claims.FirstOrDefault(x => x.Type == "sub").Value,
                CHash = jsonToken.Claims.FirstOrDefault(x => x.Type == "c_hash").Value,
                Email = jsonToken.Claims.FirstOrDefault(x => x.Type == "email").Value,
                EmailVerified = emailVerified,
                IsPrivateEmail = jsonToken.Claims.FirstOrDefault(x => x.Type == "is_private_email")?.Value,
                AuthenticationTime = authenticationTime,
                NonceSupported = nonceSupported,
                RealUserStatus = realUserStatus
            };
        }
    }
}
