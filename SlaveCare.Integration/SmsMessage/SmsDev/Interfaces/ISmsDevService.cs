using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.SmsDev.Interfaces
{
    public interface ISmsDevService
    {
        Task<IResponseBase> SendMessage(string toPhoneNumber, string message);
    }
}