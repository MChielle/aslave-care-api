using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.User;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IUserService : IServiceBase<UserAddModel, UserUpdateModel, UserPatchModel, UserGetModel, UserModel, Guid>
    {
        Task<IResponseBase> AddUserWithRoleAsync(UserAddModel userModel, UserType userType);

        Task<IResponseBase> GetByEmailAsync(string email);

        Task<IResponseBase> GetByPhoneNumberAsync(string phoneNumber);

        Task<IResponseBase> SoftDeleteById(Guid id);

        Task<IResponseBase> SoftDeleteByEmail(string email);

        Task<IResponseBase> SoftDeleteByPhoneNumber(string phoneNumber);

        Task UpdateLastLoginAsync(Guid id);

        Task<IResponseBase> ChangePassword(UserModel userModel);

        Task<IResponseBase> UpdateByTokenAsync(string jwtToken, UserUpdateModel model);

        Task<IResponseBase> GetByAppleUserIdAsync(string appleUserId, CancellationToken cancellationToken = default);

        Task<IResponseBase> CheckPhoneNumberByToken(string jwtToken, string phoneNumber);

        Task<IResponseBase> ValidateAndUpdatePhoneNumberByToken(string jwtToken, string phoneNumber, string confirmationCode);
    }
}