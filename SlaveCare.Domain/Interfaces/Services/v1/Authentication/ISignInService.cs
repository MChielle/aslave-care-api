using SlaveCare.Domain.Models.v1.SignIn;
using SlaveCare.Domain.Responses.Interfaces;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services.v1.Authentication
{
    public interface ISignInService
    {
        Task<IResponseBase> SignInAsync(SignInEmailRequestModel signInEmailRequestModel);

        Task<IResponseBase> RequestRecoverPasswordByEmailAsync(string email);

        Task<IResponseBase> ValidateEmailConfirmationCodeAsync(SignInEmailConfirmationCodeModel signInEmailConfirmationCodeModel);

        Task<IResponseBase> ValidateRecoverPasswordConfirmationCodeAsync(SignInEmailConfirmationCodeModel signInEmailConfirmationCodeModel);

        Task<IResponseBase> ChangePasswordAsync(string jwtToken, SignInChangePasswordModel signInChangePasswordModel);

        Task<IResponseBase> ValidatePhoneNumberConfirmationCodeAsync(SignInPhoneNumberConfirmationCodeModel signInPhoneNumberConfirmationCodeModel);

        Task<IResponseBase> ResendConfirmationCodeSmsAsync(string phoneNumber);

        Task<IResponseBase> ResendConfirmationCodeEmailAsync(string email);

        Task<IResponseBase> SignInSignUpSocialMediaAsync(SignInSocialMediaModel signInSocialMediaModel);
    }
}