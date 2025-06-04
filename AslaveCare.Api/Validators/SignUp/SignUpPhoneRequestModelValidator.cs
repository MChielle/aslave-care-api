using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Models.v1.SignUp;
using FluentValidation;

namespace AslaveCare.Api.Validators.SignUp
{
    public class SignUpPhoneRequestModelValidator : AbstractValidator<SignUpPhoneModel>
    {
        public SignUpPhoneRequestModelValidator()
        {
            RuleFor(x => x.PhoneNumber)
                    .Matches("[0-9]").WithMessage(nameof(SignUpPhoneModel.PhoneNumber).MessageForInvalidValue())
                    .NotEmpty().WithMessage(nameof(SignUpPhoneModel.PhoneNumber).MessageForEmptyProperty())
                    .MaximumLength(20);

            RuleFor(x => x.Password)
                .NotNull().WithMessage(nameof(SignUpPhoneModel.Password).MessageForNullProperty())
                .NotEmpty().WithMessage(nameof(SignUpPhoneModel.Password).MessageForEmptyProperty())
                .MinimumLength(ConstantsGeneral.PASSWORD_MINIMUN_LENGTH);
        }
    }
}