using FluentValidation;
using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Models.v1.SignIn;

namespace AslaveCare.Api.Validators.SignIn
{
    public class SignInEmailConfirmationCodeModelValidator : AbstractValidator<SignInEmailConfirmationCodeModel>
    {
        public SignInEmailConfirmationCodeModelValidator()
        {
            RuleFor(x => x.Email)
                .EmailAddress().WithMessage(nameof(SignInEmailConfirmationCodeModel.Email).MessageForInvalidValue())
                .NotEmpty().WithMessage(nameof(SignInEmailConfirmationCodeModel.Email).MessageForEmptyProperty());

            RuleFor(x => x.ConfirmationCode)
                .NotEmpty().WithMessage(nameof(SignInEmailConfirmationCodeModel.ConfirmationCode).MessageForEmptyProperty())
                .NotNull().WithMessage(nameof(SignInEmailConfirmationCodeModel.ConfirmationCode).MessageForNullProperty())
                .Matches("[0-9]").WithMessage(nameof(SignInEmailConfirmationCodeModel.ConfirmationCode).MessageForNumericOnly())
                .Length(ConstantsGeneral.CONFIRMATION_CODE_LENGTH);
        }
    }
}
