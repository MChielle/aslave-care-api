using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.SmsDev.Responses
{
    internal class SmsDevOkResponse : IResponseBase
    {
        public bool IsSuccess => true;
    }
}