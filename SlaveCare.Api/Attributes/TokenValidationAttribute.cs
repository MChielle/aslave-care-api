using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Filters;

namespace SlaveCare.Api.Attributes
{
    public class TokenValidationAttribute : TypeFilterAttribute
    {
        public TokenValidationAttribute()
            : base(typeof(ActionFilter))
        {
        }
    }
}