using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Integration.SmsMessage.Devino.Interfaces
{
    public interface IDevinoService
    {
        Task<IResponseBase> SendMessage(string toPhoneNumber, string message);
    }
}