using FluentValidation;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Models.v1.User;

namespace AslaveCare.Api.Validators.User
{
    public class UserAddModelValidator : AbstractValidator<UserAddModel>
    {
        public UserAddModelValidator()
        {
            RuleFor(x => x.Email)
                .EmailAddress().WithMessage(nameof(UserAddModel.Email).MessageForInvalidValue())
                .NotEmpty().WithMessage(nameof(UserAddModel.Email).MessageForEmptyProperty());
        }
    }
}
