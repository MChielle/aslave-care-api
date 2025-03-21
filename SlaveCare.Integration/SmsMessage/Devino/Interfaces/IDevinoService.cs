using SlaveCare.Domain.Responses.Interfaces;

namespace SlaveCare.Integration.SmsMessage.Devino.Interfaces
{
    public interface IDevinoService
    {
        Task<IResponseBase> SendMessage(string toPhoneNumber, string message);
    }
}