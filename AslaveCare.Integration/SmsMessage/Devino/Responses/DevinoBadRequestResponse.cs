using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.SmsMessage.Devino.Responses
{
    public class DevinoBadRequestResponse : IResponseBase
    {
        public bool IsSuccess => false;
    }
}