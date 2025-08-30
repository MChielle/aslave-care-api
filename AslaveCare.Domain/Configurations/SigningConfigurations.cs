using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace AslaveCare.Domain.Configurations
{
    public class SigningConfigurations
    {
        private string KeyContent { get; set; }
        public SecurityKey Key { get; }
        public SigningCredentials SigningCredentials { get; }

        public SigningConfigurations(IConfiguration configuration)
        {
            KeyContent = configuration.GetValue<string>("JWT_SECRET");
            Key = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(KeyContent));

            SigningCredentials = new SigningCredentials(
                Key, SecurityAlgorithms.HmacSha256Signature);
        }
    }
}