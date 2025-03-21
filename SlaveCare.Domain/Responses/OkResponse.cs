using SlaveCare.Domain.Responses.Base;

namespace SlaveCare.Domain.Responses
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