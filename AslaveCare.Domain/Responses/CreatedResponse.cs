using AslaveCare.Domain.Responses.Base;

namespace AslaveCare.Domain.Responses
{
    public class CreatedResponse : ResponseBase
    {
        public CreatedResponse(object data = null, string requestId = "")
        {
            Data = data;
            RequestId = requestId;
        }

        public override bool IsSuccess => true;

        public object Data { get; set; }

        public string RequestId { get; set; }
    }
}
