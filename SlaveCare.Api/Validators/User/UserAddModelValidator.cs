using FluentValidation;
using SlaveCare.Domain.Extensions;
using SlaveCare.Domain.Models.v1.User;

namespace SlaveCare.Api.Validators.User
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