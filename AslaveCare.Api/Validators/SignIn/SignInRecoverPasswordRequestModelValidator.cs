using FluentValidation;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Models.v1.SignIn;

namespace AslaveCare.Api.Validators.SignIn
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
