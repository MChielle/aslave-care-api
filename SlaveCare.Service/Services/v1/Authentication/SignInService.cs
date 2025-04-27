using AutoMapper;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Helpers;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Interfaces.Services.v1.Authentication;
using SlaveCare.Domain.Interfaces.Services.v1.Notification;
using SlaveCare.Domain.Models.v1.SignIn;
using SlaveCare.Domain.Models.v1.User;
using SlaveCare.Domain.Models.v1.UserValidation;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Integration.Google.OAuth2.Interfaces;
using SlaveCare.Integration.Google.OAuth2.Models.Responses;
using SlaveCare.Service.Helpers;
using SlaveCare.Service.ServiceContext;
using System;
using System.Text;
using System.Threading.Tasks;

namespace SlaveCare.Service.Services.v1.Authentication
{
    public class SignInService : ISignInService
    {
        private readonly IMapper Mapper;
        private readonly IJwtService _jwtService;
        private readonly IUserService _userService;
        private readonly IOAuthService _oAuthService;
        private readonly IUserValidationService _userValidationService;
        private readonly INotificationService _notificationService;
        private readonly IGoogleOAuth2Service _googleOAuth2Service;

        public SignInService(IServiceContext serviceContext,
            IJwtService jwtService,
            IUserService userService,
            IOAuthService oAuthService,
            IUserValidationService userValidationService,
            INotificationService pushNotificationService,
            IGoogleOAuth2Service googleOAuth2Service)
        {
            _jwtService = jwtService;
            _userService = userService;
            _oAuthService = oAuthService;
            Mapper = serviceContext.Mapper;
            _userValidationService = userValidationService;
            _notificationService = pushNotificationService;
            _googleOAuth2Service = googleOAuth2Service;
        }

        public async Task<IResponseBase> SignInAsync(SignInEmailRequestModel signInEmailRequestModel)
        {
            var response = await _userService.GetByEmailAsync(signInEmailRequestModel.Email);
            if (!response.IsSuccess) return new UnauthorizedResponse();
            var user = ((OkResponse<UserModel>)response).Data;

            if (user == null || user.Password.Length == 0 || !RSACipherHelper.ValidateEncryptedData(signInEmailRequestModel.Password, Encoding.UTF8.GetString(user.Password))) return new UnauthorizedResponse();

            var authentication = await _oAuthService.CreateSignInAuthenticationEmailAsync(user);
            await _userService.UpdateLastLoginAsync(user.Id);
            authentication.User = Mapper.Map<UserSignInModel>(user);

            return new OkResponse<SignInAuthenticationModel>(authentication);
        }

        public async Task<IResponseBase> RequestRecoverPasswordByEmailAsync(string email)
        {
            var response = await _userService.GetByEmailAsync(email);
            if (!response.IsSuccess) return new OkResponse<object>(null);
            var user = ((OkResponse<UserModel>)response).Data;
            if (user.UserValidation == null)
                user.UserValidation = new UserValidationModel() { EmailConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode() };
            else
                user.UserValidation.EmailConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode();
            response = await _userValidationService.AddOrUpdateAsync(user.UserValidation);
            if (!response.IsSuccess) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, response);
            var userValidation = ((OkResponse<UserValidationModel>)response).Data;
            await _notificationService.SendForgotPasswordNotificationEmailAsync(user.Name, user.Email, userValidation.EmailConfirmationCode);
            return new OkResponse<object>(null);
        }

        //TODO: Criar PhoneNumber confirmation code
        //TODO: Criar tempo de vida para o confirmation code
        //TODO: Retornar unauthorized
        public async Task<IResponseBase> ValidateEmailConfirmationCodeAsync(SignInEmailConfirmationCodeModel signInEmailConfirmationCodeModel)
        {
            var response = await _userService.GetByEmailAsync(signInEmailConfirmationCodeModel.Email);
            if (!response.IsSuccess) return response;
            var user = ((OkResponse<UserModel>)response).Data;
            if (user.UserValidation.EmailConfirmationCode != signInEmailConfirmationCodeModel.ConfirmationCode) return new BadRequestResponse(ConstantMessages.CRUD_INVALID_PARAMETER, null);
            user.UserValidation.EmailConfirmationCode = null;
            user.UserValidation.EmailValidated = true;
            user.LastChangeDate = DateTime.UtcNow;
            response = await _userValidationService.AddOrUpdateAsync(user.UserValidation);
            if (!response.IsSuccess) return response;
            await _notificationService.SendConfirmationCodeSuccessNotificationEmail(user.Name, user.Email, user.UserValidation.EmailConfirmationCode);
            var authentication = await _oAuthService.CreateRecoverPasswordAuthenticationEmailAsync(user, TimeSpan.FromMinutes(5).TotalSeconds);
            return new OkResponse<SignInRecoverPasswordAuthenticationModel>(authentication);
        }

        public async Task<IResponseBase> ValidateRecoverPasswordConfirmationCodeAsync(SignInEmailConfirmationCodeModel signInEmailConfirmationCodeModel)
        {
            var response = await _userService.GetByEmailAsync(signInEmailConfirmationCodeModel.Email);
            if (!response.IsSuccess) return response;
            var user = ((OkResponse<UserModel>)response).Data;
            if (user.UserValidation.EmailConfirmationCode != signInEmailConfirmationCodeModel.ConfirmationCode) return new BadRequestResponse(ConstantMessages.CRUD_INVALID_PARAMETER, null);
            user.UserValidation.EmailConfirmationCode = null;
            user.UserValidation.EmailValidated = true;
            user.LastChangeDate = DateTime.UtcNow;
            response = await _userValidationService.AddOrUpdateAsync(user.UserValidation);
            if (!response.IsSuccess) return response;
            var authentication = await _oAuthService.CreateRecoverPasswordAuthenticationEmailAsync(user, TimeSpan.FromMinutes(5).TotalSeconds);
            return new OkResponse<SignInRecoverPasswordAuthenticationModel>(authentication);
        }

        public async Task<IResponseBase> ValidatePhoneNumberConfirmationCodeAsync(SignInPhoneNumberConfirmationCodeModel signInPhoneNumberConfirmationCodeModel)
        {
            var response = await _userService.GetByPhoneNumberAsync(signInPhoneNumberConfirmationCodeModel.PhoneNumber);
            if (!response.IsSuccess) return response;
            var user = ((OkResponse<UserModel>)response).Data;
            if (user.UserValidation.PhoneNumberConfirmationCode != signInPhoneNumberConfirmationCodeModel.ConfirmationCode) return new BadRequestResponse(ConstantMessages.CRUD_INVALID_PARAMETER, null);
            user.UserValidation.PhoneNumberConfirmationCode = null;
            user.UserValidation.PhoneNumberValidated = true;
            user.LastChangeDate = DateTime.UtcNow;
            response = await _userValidationService.AddOrUpdateAsync(user.UserValidation);
            if (!response.IsSuccess) return response;
            return new OkResponse<object>(null);
        }

        public async Task<IResponseBase> ChangePasswordAsync(string jwtToken, SignInChangePasswordModel signInChangePasswordModel)
        {
            var userId = _jwtService.GetUserIdFromToken(jwtToken);
            var response = await _userService.GetCompleteByIdAsync(userId);
            if (!response.IsSuccess) return new NoContentResponse();
            var user = ((OkResponse<UserModel>)response).Data;
            user.LastChangeDate = DateTime.UtcNow;
            user.LastPasswordChangeDate = DateTime.UtcNow;
            user.Password = Encoding.UTF8.GetBytes(RSACipherHelper.EncryptString(signInChangePasswordModel.Password));
            return await _userService.ChangePassword(user);
        }

        public async Task<IResponseBase> ResendConfirmationCodeSmsAsync(string phoneNumber)
        {
            var response = await _userService.GetByPhoneNumberAsync(phoneNumber);
            if (!response.IsSuccess) return new NoContentResponse();
            var user = ((OkResponse<UserModel>)response).Data;
            if (user.UserValidation == null)
                user.UserValidation = new UserValidationModel() { EmailConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode() };
            else
            {
                user.UserValidation.PhoneNumberConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode();
                user.UserValidation.PhoneNumberValidated = false;
            }
            response = await _userValidationService.AddOrUpdateAsync(user.UserValidation);
            if (!response.IsSuccess) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, response);
            var userValidation = ((OkResponse<UserValidationModel>)response).Data;
            var message = string.Format(ConstantMessages.MESSAGE_SMS_CONFIRMATION_CODE, userValidation.PhoneNumberConfirmationCode);
            //await _notificationService.SendSmsMessage(user.PhoneNumber, message, user.CountryId);
            return new OkResponse<bool>(true);
        }

        public async Task<IResponseBase> ResendConfirmationCodeEmailAsync(string email)
        {
            var response = await _userService.GetByEmailAsync(email);
            if (!response.IsSuccess) return new NoContentResponse();
            var user = ((OkResponse<UserModel>)response).Data;
            if (user.UserValidation == null)
                user.UserValidation = new UserValidationModel() { EmailConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode() };
            else
            {
                user.UserValidation.EmailConfirmationCode = ConfirmationCodeHelper.GenerateConfirmationCode();
                user.UserValidation.EmailValidated = false;
            }
            response = await _userValidationService.AddOrUpdateAsync(user.UserValidation);
            if (!response.IsSuccess) return new BadRequestResponse(ConstantMessages.CRUD_UPDATE_FAIL, response);
            var userValidation = ((OkResponse<UserValidationModel>)response).Data;
            await _notificationService.SendValidationCodeNotificationEmailAsync(user.Name, user.Email, userValidation.EmailConfirmationCode);
            return new OkResponse<bool>(true);
        }

        public async Task<IResponseBase> SignInSignUpSocialMediaAsync(SignInSocialMediaModel signInSocialMediaModel)
        {
            switch (signInSocialMediaModel.SocialMediaType)
            {
                case Domain.Enums.SocialMediaType.Google:
                    return await SignInSignUpGoogle(signInSocialMediaModel);

                case Domain.Enums.SocialMediaType.Apple:
                    return await SignInSignUpApple(signInSocialMediaModel);

                default:
                    return new UnauthorizedResponse();
            }
        }

        //TODO ver se é possivel mover gravação de usar para o contexto de customer.
        private async Task<IResponseBase> SignInSignUpApple(SignInSocialMediaModel signInSocialMediaModel)
        {
            UserModel user = null;
            var jwtData = _jwtService.ReadAppleAuthenticationJwt(signInSocialMediaModel.SocialMediaToken);

            if (jwtData == null || !jwtData.EmailVerified.Value) return new UnauthorizedResponse();

            //if (DateTime.UtcNow > DateTimeOffset.FromUnixTimeSeconds(jwtData.Expiration).UtcDateTime) return new UnauthorizedResponse();

            var response = await _userService.GetByAppleUserIdAsync(jwtData.AppleUserId);

            if (!response.IsSuccess)
            {
                var newUser = new UserAddModel
                {
                    Email = jwtData.Email,
                    Password = jwtData.AppleUserId,
                    AppleUserId = jwtData.AppleUserId,
                    Name = signInSocialMediaModel.Name,
                };

                newUser.UserValidation = new UserValidationAddModel
                {
                    EmailValidated = true,
                    CreationDate = DateTime.UtcNow
                };

                response = await _userService.AddUserWithRoleAsync(newUser, signInSocialMediaModel.UserType);

                if (!response.IsSuccess) return new UnauthorizedResponse();

                user = ((OkResponse<UserModel>)response).Data;

                if (!response.IsSuccess) return new UnauthorizedResponse();
            }
            else
            {
                user = ((OkResponse<UserModel>)response).Data;
            }

            var authentication = await _oAuthService.CreateSignInAuthenticationEmailAsync(user);
            await _userService.UpdateLastLoginAsync(user.Id);
            authentication.User = Mapper.Map<UserSignInModel>(user);

            return new OkResponse<SignInAuthenticationModel>(authentication);
        }

        //TODO ver se é possivel mover gravação de usar para o contexto de customer.
        private async Task<IResponseBase> SignInSignUpGoogle(SignInSocialMediaModel signInSocialMediaModel)
        {
            UserModel user = null;
            var response = await _googleOAuth2Service.ValidateGoogleTokenAuthentication(signInSocialMediaModel.SocialMediaToken);

            if (!response.IsSuccess) return new UnauthorizedResponse();

            var googleTokenValitation = (GoogleOkResponse)response;

            response = await _userService.GetByEmailAsync(googleTokenValitation.email);

            if (!response.IsSuccess)
            {
                var newUser = new UserAddModel
                {
                    Email = googleTokenValitation.email,
                    Password = googleTokenValitation.user_id,
                    Name = signInSocialMediaModel.Name,
                };

                newUser.UserValidation = new UserValidationAddModel
                {
                    EmailValidated = true,
                    CreationDate = DateTime.UtcNow
                };

                response = await _userService.AddUserWithRoleAsync(newUser, signInSocialMediaModel.UserType);

                if (!response.IsSuccess) return new UnauthorizedResponse();

                user = ((OkResponse<UserModel>)response).Data;

                if (!response.IsSuccess) return new UnauthorizedResponse();
            }
            else
            {
                user = ((OkResponse<UserModel>)response).Data;
            }

            var authentication = await _oAuthService.CreateSignInAuthenticationEmailAsync(user);
            await _userService.UpdateLastLoginAsync(user.Id);
            authentication.User = Mapper.Map<UserSignInModel>(user);

            return new OkResponse<SignInAuthenticationModel>(authentication);
        }
    }
}