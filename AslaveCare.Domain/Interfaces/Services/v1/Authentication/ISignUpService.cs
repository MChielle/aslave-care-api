using System.Threading.Tasks;
using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Models.v1.SignUp;
using AslaveCare.Domain.Responses.Interfaces;

namespace AslaveCare.Domain.Interfaces.Services.v1.Authentication
{
    public interface ISignUpService
    {
        Task<IResponseBase> SignUpEmailAsync(SignUpEmailModel signUpEmailModel, UserType userType);
    }
}
