using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace AslaveCare.Api.Configurations
{
    public class SigningConfiguration
    {
        private string KeyContent { get; set; }
        public SecurityKey Key { get; }
        public SigningCredentials SigningCredentials { get; }

        public SigningConfiguration()
        {
            KeyContent = System.Environment.GetEnvironmentVariable("JWT_SECRET");
            Key = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(KeyContent));

            SigningCredentials = new SigningCredentials(
                Key, SecurityAlgorithms.HmacSha256Signature);
        }
    }
}