using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.SmsMessage.SmsDev.Interfaces
{
    public interface ISmsDevService
    {
        Task<IResponseBase> SendMessage(string toPhoneNumber, string message);
    }
}