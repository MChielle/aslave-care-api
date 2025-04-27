using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.Devino.Responses
{
    public class DevinoBadRequestResponse : IResponseBase
    {
        public bool IsSuccess => false;
    }
}