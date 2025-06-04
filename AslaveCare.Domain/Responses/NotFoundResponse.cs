using AslaveCare.Domain.Responses.Base;

namespace AslaveCare.Domain.Responses
{
    public class NotFoundResponse : ResponseBase
    {
        public NotFoundResponse(string message, string requestId = "")
        {
            Message = message;
            RequestId = requestId;
        }

        public string Message { get; set; }
        public string RequestId { get; set; }
    }
}