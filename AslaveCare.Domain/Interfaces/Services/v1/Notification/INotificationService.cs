using AslaveCare.Domain.Models.v1.PushNotification.EmailSendGrid;
using AslaveCare.Domain.Responses.Interfaces;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1.Notification
{
    public interface INotificationService
    {
        Task<IResponseBase> SendSmsMessage(string toPhoneNumber, string message, string countryId);

        Task<bool> SendEmailAsync(SendEmailModel pushEmail);

        Task<bool> SendValidationCodeNotificationEmailAsync(string ToName, string ToEmail, string validationCode);

        Task<bool> SendForgotPasswordNotificationEmailAsync(string ToName, string ToEmail, string validationCode);

        Task<bool> SendConfirmationCodeSuccessNotificationEmail(string ToName, string ToEmail, string validationCode);
    }
}