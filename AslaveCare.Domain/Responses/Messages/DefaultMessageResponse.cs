namespace AslaveCare.Domain.Responses.Messages
{
    public class DefaultMessageResponse
    {
        public DefaultMessageResponse(string message, object response = null)
        {
            Message = message;
            Response = response;
        }

        public string Message { get; set; }
        public object Response { get; set; }
    }
}