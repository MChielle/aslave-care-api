﻿using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
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

        Task<IResponseBase> UpdateByTokenAsync(string jwtToken, UserUpdateModel model);

        Task<IResponseBase> GetByAppleUserIdAsync(string appleUserId, CancellationToken cancellationToken = default);

        Task<IResponseBase> CheckPhoneNumberByToken(string jwtToken, string phoneNumber);

        Task<IResponseBase> ValidateAndUpdatePhoneNumberByToken(string jwtToken, string phoneNumber, string confirmationCode);
        Task<IResponseBase> GetByParameters(UserGetByParametersModel parameters, CancellationToken cancellation = default);
        Task<IResponseBase> UpdateByMasterAsync(Guid id, UserUpdateByMasterModel model);
        Task<IResponseBase> UpdateAsync(UserModel model);
    }
}