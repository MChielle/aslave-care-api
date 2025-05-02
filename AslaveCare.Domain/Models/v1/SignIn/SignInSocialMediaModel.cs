using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Enums;

namespace AslaveCare.Domain.Models.v1.SignIn
{
    public class SignInSocialMediaModel
    {
        public SocialMediaType SocialMediaType { get; set; }
        public string SocialMediaToken { get; set; }
        public string Name { get; set; }
        public UserType UserType { get; set; }
    }
}
