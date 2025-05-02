using System;
using System.Linq;
using AslaveCare.Domain.Constants;

namespace AslaveCare.Service.Helpers
{
    public static class ConfirmationCodeHelper
    {
        public static string GenerateConfirmationCode()
        {
            var random = new Random();
            const string chars = "0123456789";
            return new string(Enumerable.Repeat(chars, ConstantsGeneral.CONFIRMATION_CODE_LENGTH)
                                        .Select(s => s[random.Next(s.Length)]).ToArray());
        }
    }
}
