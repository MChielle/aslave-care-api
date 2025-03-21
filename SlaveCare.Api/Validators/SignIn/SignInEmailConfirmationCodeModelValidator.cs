using FluentValidation;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Extensions;
using SlaveCare.Domain.Models.v1.SignIn;

namespace SlaveCare.Api.Validators.SignIn
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