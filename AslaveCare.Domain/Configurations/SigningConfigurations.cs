using Microsoft.Extensions.Logging;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Text;
using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Extensions;

namespace AslaveCare.Domain.Configurations
{
    public class SigningConfigurations
    {
        private string KeyContent { get; set; }
        public SecurityKey Key { get; }
        public SigningCredentials SigningCredentials { get; }

        public SigningConfigurations(ILogger _logger)
        {
            try
            {
                KeyContent = System.Environment.GetEnvironmentVariable("JWT_SECRET");
                Key = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(KeyContent));

                SigningCredentials = new SigningCredentials(
                    Key, SecurityAlgorithms.HmacSha256Signature);

                _logger.LogInformation(string.Concat("Loading JWT Secret".Fill('.', ConstantsGeneral.DEFAULT_FILL_LENGHT), "Executed"));
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
    }
}
