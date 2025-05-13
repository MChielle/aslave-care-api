using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Models.v1.SignUp;
using FluentValidation;

namespace AslaveCare.Api.Validators.SignUp
{
    public class SignUpPhoneRequestModelValidator : AbstractValidator<SignUpPhoneRequestModel>
    {
        public SignUpPhoneRequestModelValidator()
        {
            RuleFor(x => x.PhoneNumber)
                    .Matches("[0-9]").WithMessage(nameof(SignUpPhoneRequestModel.PhoneNumber).MessageForInvalidValue())
                    .NotEmpty().WithMessage(nameof(SignUpPhoneRequestModel.PhoneNumber).MessageForEmptyProperty())
                    .MaximumLength(20);

            RuleFor(x => x.Password)
                .NotNull().WithMessage(nameof(SignUpPhoneRequestModel.Password).MessageForNullProperty())
                .NotEmpty().WithMessage(nameof(SignUpPhoneRequestModel.Password).MessageForEmptyProperty())
                .MinimumLength(ConstantsGeneral.PASSWORD_MINIMUN_LENGTH);
        }
    }
}