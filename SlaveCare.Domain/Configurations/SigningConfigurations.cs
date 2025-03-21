using Microsoft.Extensions.Logging;
using Microsoft.IdentityModel.Tokens;
using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Extensions;
using System;
using System.Text;

namespace SlaveCare.Domain.Configurations
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