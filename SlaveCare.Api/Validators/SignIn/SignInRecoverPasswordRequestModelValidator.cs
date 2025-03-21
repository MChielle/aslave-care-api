using FluentValidation;
using SlaveCare.Domain.Extensions;
using SlaveCare.Domain.Models.v1.SignIn;

namespace SlaveCare.Api.Validators.SignIn
{
    public class SignInRecoverPasswordRequestModelValidator : AbstractValidator<SignInRecoverPasswordRequestModel>
    {
        public SignInRecoverPasswordRequestModelValidator()
        {
            RuleFor(x => x.Email)
                .EmailAddress().WithMessage(nameof(SignInRecoverPasswordRequestModel.Email).MessageForInvalidValue())
                .NotEmpty().WithMessage(nameof(SignInRecoverPasswordRequestModel.Email).MessageForEmptyProperty());
        }
    }
}