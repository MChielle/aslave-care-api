using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.SmsMessage.Devino.Responses
{
    public class DevinoOkResponse : IResponseBase
    {
        public bool IsSuccess => true;
    }
}
