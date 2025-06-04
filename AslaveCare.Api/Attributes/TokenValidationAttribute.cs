using AslaveCare.Api.Filters;
using Microsoft.AspNetCore.Mvc;

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