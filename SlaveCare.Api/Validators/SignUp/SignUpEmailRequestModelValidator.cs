using FluentValidation;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Extensions;
using SlaveCare.Domain.Models.v1.SignUp;

namespace SlaveCare.Api.Validators.SignUp
{
    public class SignUpEmailRequestModelValidator : AbstractValidator<SignUpEmailModel>
    {
        public SignUpEmailRequestModelValidator()
        {
            RuleFor(x => x.Email)
                .EmailAddress().WithMessage(nameof(SignUpEmailModel.Email).MessageForInvalidValue())
                .NotEmpty().WithMessage(nameof(SignUpEmailModel.Email).MessageForEmptyProperty());

            RuleFor(x => x.Password)
                .NotNull().WithMessage(nameof(SignUpEmailModel.Password).MessageForNullProperty())
                .NotEmpty().WithMessage(nameof(SignUpEmailModel.Email).MessageForEmptyProperty())
                .MinimumLength(ConstantsGeneral.PASSWORD_MINIMUN_LENGTH);
        }
    }
}