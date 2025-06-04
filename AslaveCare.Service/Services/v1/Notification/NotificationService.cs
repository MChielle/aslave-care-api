using AslaveCare.Domain.Configurations;
using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Interfaces.Services.v1.Notification;
using AslaveCare.Domain.Models.v1.PushNotification.EmailSendGrid;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Integration.SmsMessage.Devino.Interfaces;
using AslaveCare.Integration.SmsMessage.HttpSms.Interfaces;
using AslaveCare.Integration.SmsMessage.HttpSms.Models;
using AslaveCare.Integration.SmsMessage.SmsDev.Interfaces;
using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.IO;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1.Notification
{
    public class NotificationService : INotificationService
    {
        private readonly string _sendGridSecretKey;
        private readonly string _applicationName;
        private readonly string _noReplyEmail;
        private readonly IDevinoService _devinoService;
        private readonly ISmsDevService _smsDevService;
        private readonly IHttpSmsService _httpSmsService;

        public NotificationService(IDevinoService devinoService, ISmsDevService smsDevService, IHttpSmsService httpSmsService)
        {
            _sendGridSecretKey = System.Environment.GetEnvironmentVariable("SEND_GRID_TOKEN");
            _applicationName = System.Environment.GetEnvironmentVariable("APPLICATION_NAME");
            _noReplyEmail = System.Environment.GetEnvironmentVariable("NO_REPLY_EMAIL");
            _devinoService = devinoService;
            _smsDevService = smsDevService;
            _httpSmsService = httpSmsService;
        }

        public async Task<bool> SendValidationCodeNotificationEmailAsync(string ToName, string ToEmail, string validationCode)
        {
            var contentHtmlBody = File.ReadAllText($@"{System.AppDomain.CurrentDomain.BaseDirectory}Services/v1/Notification/EmailTemplates/confirmation_code.html");
            return await SendEmailAsync(new SendEmailModel()
            {
                FromEmail = _noReplyEmail,
                FromName = _applicationName,
                ToName = ToName,
                ToEmail = ToEmail,
                Subject = ConstantMessages.EMAIL_SUBJECT_VALIDATION_CODE_NOTIFICATION,
                HtmlContent = contentHtmlBody.Replace("{CODE_HERE}", validationCode).Replace("{NAME_HERE}", ToName)
            });
        }

        public async Task<bool> SendForgotPasswordNotificationEmailAsync(string ToName, string ToEmail, string validationCode)
        {
            var contentHtmlBody = File.ReadAllText($@"{System.AppDomain.CurrentDomain.BaseDirectory}Services/v1/Notification/EmailTemplates/forgot_password.html");
            return await SendEmailAsync(new SendEmailModel()
            {
                FromEmail = _noReplyEmail,
                FromName = _applicationName,
                ToName = ToName,
                ToEmail = ToEmail,
                Subject = ConstantMessages.EMAIL_SUBJECT_VALIDATION_CODE_NOTIFICATION,
                HtmlContent = contentHtmlBody.Replace("{CODE_HERE}", validationCode).Replace("{NAME_HERE}", ToName)
            });
        }

        public async Task<bool> SendConfirmationCodeSuccessNotificationEmail(string ToName, string ToEmail, string validationCode)
        {
            var contentHtmlBody = File.ReadAllText($@"{System.AppDomain.CurrentDomain.BaseDirectory}Services/v1/Notification/EmailTemplates/confirmation_code_success.html");
            return await SendEmailAsync(new SendEmailModel()
            {
                FromEmail = _noReplyEmail,
                FromName = _applicationName,
                ToName = ToName,
                ToEmail = ToEmail,
                Subject = ConstantMessages.EMAIL_SUBJECT_VALIDATION_CODE_NOTIFICATION,
                HtmlContent = contentHtmlBody.Replace("{CODE_HERE}", validationCode).Replace("{NAME_HERE}", ToName)
            });
        }

        public async Task<IResponseBase> SendSmsMessage(string toPhoneNumber, string message, string countryId)
        {
            if (IntegrationConfiguration.SmsProvider == "HttpSms")
            {
                var response = await _httpSmsService.SendMessage(new HttpSmsSendMessageModel
                {
                    Content = message,
                    To = toPhoneNumber,
                    CountryId = countryId
                });
                return response;
            }
            else
            {
                switch (countryId)
                {
                    case "BRL":
                        return await _smsDevService.SendMessage(toPhoneNumber, message);

                    case "POR":
                        return await _devinoService.SendMessage(toPhoneNumber, message);

                    default:
                        throw new NotImplementedException();
                }
            }
        }

        public async Task<bool> SendEmailAsync(SendEmailModel pushEmail)
        {
            var client = new SendGridClient(_sendGridSecretKey);
            var from = new EmailAddress(pushEmail.FromEmail, pushEmail.FromName);
            var to = new EmailAddress(pushEmail.ToEmail, pushEmail.ToName);
            var msg = MailHelper.CreateSingleEmail(from, to, pushEmail.Subject, pushEmail.PlainTextContent, pushEmail.HtmlContent);
            var response = await client.SendEmailAsync(msg);
            return response.IsSuccessStatusCode;
        }
    }
}