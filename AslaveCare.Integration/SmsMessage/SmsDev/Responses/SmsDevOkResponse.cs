using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.SmsMessage.SmsDev.Responses
{
    internal class SmsDevOkResponse : IResponseBase
    {
        public bool IsSuccess => true;
    }
}
