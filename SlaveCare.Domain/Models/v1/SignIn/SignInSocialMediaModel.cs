using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Enums;

namespace SlaveCare.Domain.Models.v1.SignIn
{
    public class SignInSocialMediaModel
    {
        public SocialMediaType SocialMediaType { get; set; }
        public string SocialMediaToken { get; set; }
        public string Name { get; set; }
        public UserType UserType { get; set; }
    }
}