using AslaveCare.Api.UnitTests.Base;
using AslaveCare.Domain.Entities;
using AslaveCare.Infra.Data.Repositories.v1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

namespace AslaveCare.Api.UnitTests.Repositiories
{
    public class UserRepositoryTest : RepositoryBaseTest<UserRepository, User, Guid>
    {
        #region Create

        [Fact]
        public async System.Threading.Tasks.Task PersistNewUserToDatabase()
        {
            var user = fixture.BuildUser();

            var savedUser = await _repository.AddOrUpdateAsync(user);

            Assert.Equal(user, savedUser);
        }

        #endregion Create

        #region Read

        [Fact]
        public async System.Threading.Tasks.Task GetAllUsersFromDatabase()
        {
            var user1 = fixture.BuildUser();
            var user2 = fixture.BuildUser();
            user1 = await _repository.AddAsync(user1);
            user2 = await _repository.AddOrUpdateAsync(user2);

            var users = await _repository.GetAllAsync();

            Assert.NotEmpty(users);
            Assert.NotNull(users.First(x => x.Id.Equals(user1.Id)));
            Assert.NotNull(users.First(x => x.Id.Equals(user2.Id)));
        }

        [Fact]
        public async System.Threading.Tasks.Task GetSpecificUserFromDatabase()
        {
            var user = fixture.BuildUser();
            user = await _repository.AddOrUpdateAsync(user);

            var persistedUser = await _repository.GetByIdAsync(user.Id);

            Assert.NotNull(persistedUser);
        }

        #endregion Read

        #region Update

        //[Fact]
        //public async Task UpdateUserInDatabase()
        //{
        //    var repositoryMock = GetInMemoryUserRepository();
        //    var user = FixtureHelper.BuildDefaultUser();

        //    var savedUser = await repositoryMock.AddOrUpdateAsync(user);
        //    var newEmail = "email@email.com";
        //    await repositoryMock.AddOrUpdateAsync(savedUser);

        //    var updatedUser = await repositoryMock.GetByIdAsync(savedUser.Id);

        //    Assert.Equal(updatedUser.Email, newEmail);
        //}

        #endregion Update

        #region Delete

        //[Fact]
        //public async System.Threading.Tasks.Task Delete_ShouldDeleteUserFromDataBase_UsingEntity()
        //{
        //    var user1 = fixture.BuildUser();
        //    var user2 = fixture.BuildUser();
        //    user1 = await _repository.AddOrUpdateAsync(user1);
        //    user2 = await _repository.AddOrUpdateAsync(user2);

        //    _repository.Delete(user1);
        //    var users = await _repository.GetAllPagedAsync();

        //    Assert.Null(users.FirstOrDefault(x => x.Id.Equals(user1.Id)));
        //    Assert.NotNull(users.FirstOrDefault(x => x.Id.Equals(user2.Id)));
        //}

        //[Fact]
        //public async System.Threading.Tasks.Task Delete_ShouldDeleteUsersFromDataBase_UsingEntities()
        //{
        //    var user1 = fixture.BuildUser();
        //    var user2 = fixture.BuildUser();
        //    user1 = await _repository.AddOrUpdateAsync(user1);
        //    user2 = await _repository.AddOrUpdateAsync(user2);

        //    var savedUsers = new List<User>
        //    {
        //        user1,
        //        user2
        //    };

        //    _repository.Delete(savedUsers);
        //    var users = await _repository.GetAllPagedAsync();

        //    Assert.Null(users.FirstOrDefault(x => x.Id.Equals(user1.Id)));
        //    Assert.Null(users.FirstOrDefault(x => x.Id.Equals(user2.Id)));
        //}

        //[Fact]
        //public async System.Threading.Tasks.Task Delete_ShouldDeleteUserFromDataBase_UsingId()
        //{
        //    var user1 = fixture.BuildUser();
        //    var user2 = fixture.BuildUser();
        //    user1 = await _repository.AddOrUpdateAsync(user1);
        //    user2 = await _repository.AddOrUpdateAsync(user2);

        //    _repository.Delete(user1.Id);
        //    var users = await _repository.GetAllPagedAsync();

        //    Assert.Null(users.FirstOrDefault(x => x.Id.Equals(user1.Id)));
        //    Assert.NotNull(users.FirstOrDefault(x => x.Id.Equals(user2.Id)));
        //}

        //[Fact]
        //public async System.Threading.Tasks.Task Delete_ShouldDeleteUsersFromDataBase_UsingIds()
        //{
        //    var user1 = fixture.BuildUser();
        //    var user2 = fixture.BuildUser();

        //    user1 = await _repository.AddOrUpdateAsync(user1);
        //    user2 = await _repository.AddOrUpdateAsync(user2);

        //    var savedUserIds = new List<Guid>
        //    {
        //        user1.Id,
        //        user2.Id
        //    };

        //    _repository.Delete(savedUserIds);
        //    var users = await _repository.GetAllPagedAsync();

        //    Assert.Null(users.FirstOrDefault(x => x.Id.Equals(user1.Id)));
        //    Assert.Null(users.FirstOrDefault(x => x.Id.Equals(user2.Id)));
        //}

        #endregion Delete
    }
}