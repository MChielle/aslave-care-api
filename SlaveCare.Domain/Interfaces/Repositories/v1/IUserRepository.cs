using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Interfaces.Repositories.Core;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Repositories.v1
{
    public interface IUserRepository : IRepositoryBase<User, Guid>
    {
        Task<User> GetByEmailAsync(string email);

        Task<User> GetByPhoneNumberAsync(string phoneNumber);

        Task<User> AddUserWithRoleAsync(User user, UserType userType);

        Task<User> GetByAppleUserIdAsync(string appleUserId, CancellationToken cancellationToken);
    }
}