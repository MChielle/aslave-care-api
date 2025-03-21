using FluentValidation;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Extensions;
using SlaveCare.Domain.Models.v1.SignUp;

namespace SlaveCare.Api.Validators.SignUp
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