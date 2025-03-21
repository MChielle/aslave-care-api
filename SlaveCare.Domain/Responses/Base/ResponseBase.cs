using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Domain.Responses.Base
{
    public abstract class ResponseBase : IResponseBase
    {
        public virtual bool IsSuccess => false;
    }
}