using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.SmsMessage.SmsDev.Responses
{
    internal class SmsDevBadRequestResponse : IResponseBase
    {
        public bool IsSuccess => false;
    }
}