using SlaveCare.Domain.Responses.Base;

namespace SlaveCare.Domain.Responses
{
    public class AcceptedResponse : ResponseBase
    {
        public AcceptedResponse(string message, object data, string requestId = "")
        {
            Message = message;
            Data = data;
            RequestId = requestId;
        }

        public override bool IsSuccess => true;
        public string RequestId { get; set; }
        public string Message { get; set; }
        public object Data { get; set; }
    }
}