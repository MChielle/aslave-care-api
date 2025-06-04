using AslaveCare.Domain.Responses.Base;

namespace AslaveCare.Domain.Responses
{
    public class OkResponse<TModel> : ResponseBase
    {
        public OkResponse(TModel value)
        {
            Data = value;
        }

        public TModel Data { get; set; }

        public override bool IsSuccess => true;
    }
}