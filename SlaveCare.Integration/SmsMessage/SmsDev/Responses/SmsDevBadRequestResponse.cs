using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.SmsDev.Responses
{
    internal class SmsDevBadRequestResponse : IResponseBase
    {
        public bool IsSuccess => false;
    }
}