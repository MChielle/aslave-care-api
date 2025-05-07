using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Domain.Responses.Base
{
    public abstract class ResponseBase : IResponseBase
    {
        public virtual bool IsSuccess => false;
    }
}
