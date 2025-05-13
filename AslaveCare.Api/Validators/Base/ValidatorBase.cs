using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Models.Core;
using FluentValidation;

namespace AslaveCare.Api.Validators.Base
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