using FluentValidation;
using SlaveCare.Domain.Extensions;
using SlaveCare.Domain.Models.Core;

namespace SlaveCare.Api.Validators.Base
{
    public class ValidatorBase<TModel, TKey> : AbstractValidator<TModel>
        where TModel : EntityModel<TKey>, IEntityModel<TKey>
    {
        public void KeyValidation()
        {
            RuleFor(x => x.Id)
                .NotNull().WithMessage(FluentValidationMessageExtensions.MessageForNullProperty("Id"))
                .NotEmpty().WithMessage(FluentValidationMessageExtensions.MessageForEmptyProperty("Id"));
        }
    }
}