using FluentValidation;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Models.v1.User;

namespace AslaveCare.Api.Validators.User
{
    public class UserUpdateModelValidator : AbstractValidator<UserUpdateModel>
    {
        public UserUpdateModelValidator()
        {
            RuleFor(x => x.Email)
                .EmailAddress().WithMessage("Email".MessageForInvalidValue())
                .NotEmpty().WithMessage("Email".MessageForEmptyProperty());

            RuleFor(x => x.PhoneNumber)
                .Matches("[0-9]").WithMessage("PhoneNumber".MessageForInvalidValue())
                .MaximumLength(20);
        }
    }
}
