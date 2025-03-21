using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Interfaces.Services.v1.Authentication;
using SlaveCare.Domain.Interfaces.Services.v1.Notification;
using SlaveCare.Domain.Models.v1.SignUp;
using SlaveCare.Domain.Models.v1.User;
using SlaveCare.Domain.Models.v1.UserValidation;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Service.ServiceContext;
using System;
using System.Threading.Tasks;

namespace SlaveCare.Service.Services.v1.Authentication
{
    public class SignUpService : ISignUpService
    {
        private readonly IUserService _userService;
        private readonly IOAuthService _oAuthService;
        private readonly INotificationService _notificationService;

        public SignUpService(IServiceContext serviceContext,
            IOAuthService oAuthService,
            INotificationService pushNotificationService,
            IUserService userService)
        {
            _userService = userService;
            _oAuthService = oAuthService;
            _notificationService = pushNotificationService;
        }

        public async Task<IResponseBase> SignUpEmailAsync(SignUpEmailModel signUpEmailModel)
        {
            //switch (userType)
            //{
            //    case UserType.Master:
            //        throw new NotImplementedException();

            //    case UserType.Manager:
            return await SignUpManagerAsync(signUpEmailModel);

            //    default:
            //        throw new NotImplementedException();
            //}
        }

        private async Task<IResponseBase> SignUpManagerAsync(SignUpEmailModel signUpEmailModel)
        {
            var response = await _userService.GetByEmailAsync(signUpEmailModel.Email);
            if (response.IsSuccess) return new UnauthorizedResponse();

            var newUser = new UserAddModel { Email = signUpEmailModel.Email, Password = signUpEmailModel.Password, Name = signUpEmailModel.Name };

            newUser.UserValidation = new UserValidationAddModel
            {
                EmailValidated = true,
                CreationDate = DateTime.UtcNow
            };
            return await _userService.AddUserWithRoleAsync(newUser, UserType.Manager);
        }
    }
}