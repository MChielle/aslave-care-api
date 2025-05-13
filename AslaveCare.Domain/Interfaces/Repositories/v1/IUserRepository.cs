using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IUserRepository : IRepositoryBase<User, Guid>
    {
        Task<User> GetByEmailAsync(string email);

        Task<User> GetByPhoneNumberAsync(string phoneNumber);

        Task<User> AddUserWithRoleAsync(User user, UserType userType);

        Task<User> GetByAppleUserIdAsync(string appleUserId, CancellationToken cancellationToken);
    }
}