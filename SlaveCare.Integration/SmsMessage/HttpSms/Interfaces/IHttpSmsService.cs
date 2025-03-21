using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Integration.SmsMessage.HttpSms.Models;

namespace SlaveCare.Integration.SmsMessage.HttpSms.Interfaces
{
    public interface IHttpSmsService
    {
        Task<IResponseBase> DeletePhones(HttpSmsDeletePhonesModel model);

        Task<IResponseBase> GetPhones(HttpSmsGetPhonesModel model);

        Task<IResponseBase> SendMessage(HttpSmsSendMessageModel model);

        Task<IResponseBase> AddOrUpdatePhones(HttpSmsUpsertPhonesModel model);
    }
}