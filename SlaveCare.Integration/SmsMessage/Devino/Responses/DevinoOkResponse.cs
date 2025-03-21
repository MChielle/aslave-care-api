using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.Devino.Responses
{
    public class DevinoOkResponse : IResponseBase
    {
        public bool IsSuccess => true;
    }
}