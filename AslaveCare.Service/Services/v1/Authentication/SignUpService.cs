using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Interfaces.Services.v1.Notification;
using AslaveCare.Domain.Models.v1.SignUp;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Models.v1.UserValidation;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Service.ServiceContext;
using System;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1.Authentication
{
    public class SignUpService : ISignUpService
    {
        private readonly IUserService _userService;
        private readonly IOAuthService _oAuthService;
        //private readonly INotificationService _notificationService;

        public SignUpService(IServiceContext serviceContext,
            IOAuthService oAuthService,
            //INotificationService pushNotificationService,
            IUserService userService)
        {
            _userService = userService;
            _oAuthService = oAuthService;
            //_notificationService = pushNotificationService;
        }

        public async Task<IResponseBase> SignUpEmailAsync(SignUpEmailModel signUpEmailModel, UserType userType)
        {
            var response = await _userService.GetByEmailAsync(signUpEmailModel.Email);
            if (response.IsSuccess) return new UnauthorizedResponse();

            var newUser = new UserAddModel 
            { 
                Email = signUpEmailModel.Email, 
                Password = signUpEmailModel.Password, 
                Name = signUpEmailModel.Name 
            };

            newUser.UserValidation = new UserValidationAddModel
            {
                EmailValidated = true,
                CreationDate = DateTime.UtcNow
            };
            return await _userService.AddUserWithRoleAsync(newUser, userType);
        }

        public async Task<IResponseBase> SignUpGenericAsync(SignUpGenericModel signUpModel, UserType userType)
        {
            var response = await _userService.GetByEmailAsync(signUpModel.Email);
            if (response.IsSuccess) return new UnauthorizedResponse();

            var newUser = new UserAddModel 
            { 
                Email = signUpModel.Email, 
                PhoneNumber = signUpModel.PhoneNumber, 
                Password = signUpModel.Password, 
                Name = signUpModel.Name 
            };

            newUser.UserValidation = new UserValidationAddModel
            {
                EmailValidated = true,
                CreationDate = DateTime.UtcNow
            };

            return await _userService.AddUserWithRoleAsync(newUser, userType);
        }
    }
}