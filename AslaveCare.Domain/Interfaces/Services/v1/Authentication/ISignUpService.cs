using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Models.v1.SignUp;
using AslaveCare.Domain.Responses.Interfaces;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1.Authentication
{
    public interface ISignUpService
    {
        Task<IResponseBase> SignUpEmailAsync(SignUpEmailModel signUpEmailModel, UserType userType);
        Task<IResponseBase> SignUpGenericAsync(SignUpGenericModel signUpModel, UserType userType);
    }
}