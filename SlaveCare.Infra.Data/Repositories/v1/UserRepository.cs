using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Infra.Data.Constants;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using SlaveCare.Infra.Data.Repositories.Base;

namespace SlaveCare.Infra.Data.Repositories.v1
{
    public class UserRepository : RepositoryBase<BaseContext, User, Guid>, IUserRepository
    {
        public UserRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public async Task<User> GetByPhoneNumberAsync(string phoneNumber)
        {
            return await _context.Users
                .Include(x => x.UserValidation)
                .Include(ur => ur.UserRoles)
                    .ThenInclude(r => r.Role)
                .AsNoTracking()
                .Where(u => u.PhoneNumber == phoneNumber).FirstOrDefaultAsync();
        }

        public async Task<User> GetByEmailAsync(string email)
        {
            return await _context.Users
                .Include(x => x.UserValidation)
                .Include(ur => ur.UserRoles)
                    .ThenInclude(r => r.Role)
                .AsNoTracking()
                .Where(u => u.Email == email).FirstOrDefaultAsync();
        }

        public override async Task<User> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await _context.Users
                .Include(x => x.UserValidation)
                .Include(ur => ur.UserRoles)
                    .ThenInclude(r => r.Role)
                .AsNoTracking()
                .Where(u => u.Id == id).FirstOrDefaultAsync();
        }

        public async Task<User> AddUserWithRoleAsync(User user, UserType userType)
        {
            user.UserRoles = new List<UserRole>();

            var roleId = ConstantSeederRole.Roles.FirstOrDefault(x => x.Type == userType).Id;

            user.UserRoles.Add(new UserRole
            {
                RoleId = roleId,
                UserId = user.Id,
                Role = await _context.Roles.Where(x => x.Id == roleId).FirstOrDefaultAsync()
            });

            await AddOrUpdateAsync(user);

            return user;
        }

        public async Task UpdateLastLogin(Guid Id)
        {
            var user = await _context.Users.FindAsync(Id);
            user.LastLogin = DateTime.UtcNow;
            _context.Users.Update(user);
        }

        public async Task<User> GetByAppleUserIdAsync(string appleUserId, CancellationToken cancellationToken)
        {
            return await _context.Users
                .Include(x => x.UserValidation)
                .Include(ur => ur.UserRoles)
                    .ThenInclude(r => r.Role)
                .Where(x => x.AppleUserId == appleUserId)
                .AsNoTracking()
                .FirstOrDefaultAsync(cancellationToken);
        }
    }
}