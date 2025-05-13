using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Integration.SmsMessage.HttpSms.Models;

namespace AslaveCare.Integration.SmsMessage.HttpSms.Interfaces
{
    public interface IHttpSmsService
    {
        Task<IResponseBase> DeletePhones(HttpSmsDeletePhonesModel model);

        Task<IResponseBase> GetPhones(HttpSmsGetPhonesModel model);

        Task<IResponseBase> SendMessage(HttpSmsSendMessageModel model);

        Task<IResponseBase> AddOrUpdatePhones(HttpSmsUpsertPhonesModel model);
    }
}