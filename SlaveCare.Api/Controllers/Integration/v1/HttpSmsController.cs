using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SlaveCare.Api.Controllers.Base;
using SlaveCare.Integration.SmsMessage.HttpSms.Interfaces;
using SlaveCare.Integration.SmsMessage.HttpSms.Models;
using System.Threading.Tasks;

namespace SlaveCare.Api.Controllers.Integration.v1
{
#if DEBUG
    [AllowAnonymous]
#endif

    public class HttpSmsController : ApplicationControllerBase
    {
        private readonly IHttpSmsService _httpSmsService;

        public HttpSmsController(IHttpSmsService httpSmsService)
        {
            _httpSmsService = httpSmsService;
        }

        [HttpPost]
        public async Task<IActionResult> SendMessage([FromBody] HttpSmsSendMessageModel sendMessageModel)
        {
            return Ok(await _httpSmsService.SendMessage(sendMessageModel));
        }

        [HttpGet]
        public async Task<IActionResult> GetPhones([FromQuery] HttpSmsGetPhonesModel getPhonesModel)
        {
            return Ok(await _httpSmsService.GetPhones(getPhonesModel));
        }

        [HttpPut]
        public async Task<IActionResult> AddOrUpdatePhones([FromBody] HttpSmsUpsertPhonesModel addOrUpdatePhones)
        {
            return Ok(await _httpSmsService.AddOrUpdatePhones(addOrUpdatePhones));
        }
    }
}