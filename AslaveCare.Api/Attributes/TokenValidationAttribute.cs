using Microsoft.AspNetCore.Mvc;
using AslaveCare.Api.Filters;

namespace AslaveCare.Api.Attributes
{
    public class TokenValidationAttribute : TypeFilterAttribute
    {
        public TokenValidationAttribute()
            : base(typeof(ActionFilter))
        {
        }
    }
}
