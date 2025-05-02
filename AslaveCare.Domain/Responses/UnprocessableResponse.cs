using AslaveCare.Domain.Responses.Base;

namespace AslaveCare.Domain.Responses
{
    public class UnprocessableResponse : ResponseBase
    {
        public UnprocessableResponse(string message, object data, string requestId = "")
        {
            Message = message;
            Data = data;
            RequestId = requestId;
        }

        public string RequestId { get; set; }
        public string Message { get; set; }
        public object Data { get; set; }
    }
}
