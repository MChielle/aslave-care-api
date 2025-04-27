using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Models.v1.SignUp;
using SlaveCare.Domain.Responses.Interfaces;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services.v1.Authentication
{
    public interface ISignUpService
    {
        Task<IResponseBase> SignUpEmailAsync(SignUpEmailModel signUpEmailModel, UserType userType);
    }
}