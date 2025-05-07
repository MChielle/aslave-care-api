using AslaveCare.Domain.Responses.Base;

namespace AslaveCare.Domain.Responses
{
    public class ConflictResponse : ResponseBase
    {
        public ConflictResponse(string message, string requestId = "")
        {
            RequestId = requestId;
            Message = message;
        }

        public string RequestId { get; set; }
        public string Message { get; set; }
    }
}
