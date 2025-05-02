using AslaveCare.Api.UnitTests.Base;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Infra.Data.Repositories.v1;
using AslaveCare.Service.Services.v1;

namespace AslaveCare.Api.UnitTests.Services
{
    public class UserServiceTest : ServiceBaseTest<UserService, UserAddModel, UserUpdateModel, UserPatchModel, UserGetModel, UserModel, User, UserRepository>
    {
        //#region Create

        //[Fact]
        //public async Task PersistNewEntityToDatabase()
        //{
        //    var addModel = fixture.BuildUserAddModel();

        //    var persistedEntity = await _service.AddOrUpdateAsync(addModel);

        //    var model = ((OkResponse<UserModel>)persistedEntity).Value;

        //    Assert.True(model is UserModel);
        //}

        //#endregion Create

        //#region Read

        //[Fact]
        //public async Task GetAllEntitysFromDatabase()
        //{
        //    var repositoryMock = GetInMemoryEntityRepository();
        //    var entity1 = FixtureHelper.BuildDefaultEntity();
        //    var entity2 = FixtureHelper.BuildDefaultEntity();
        //    await repositoryMock.AddOrUpdateAsync(entity1);
        //    await repositoryMock.AddOrUpdateAsync(entity2);

        //    var Entities = await repositoryMock.GetAllAsync();

        //    Assert.NotEmpty(Entities);
        //    Assert.Contains(entity1, Entities);
        //    Assert.Contains(entity2, Entities);
        //}

        //[Fact]
        //public async Task GetSpecificEntityFromDatabase()
        //{
        //    var repositoryMock = GetInMemoryEntityRepository();
        //    var entity1 = FixtureHelper.BuildDefaultEntity();
        //    var entity2 = FixtureHelper.BuildDefaultEntity();
        //    await repositoryMock.AddOrUpdateAsync(entity1);
        //    await repositoryMock.AddOrUpdateAsync(entity2);

        //    var desiredEntity = entity1;

        //    var persistedEntity = await repositoryMock.GetByIdAsync(desiredEntity.Id);

        //    Assert.Equal(desiredEntity, persistedEntity);
        //    Assert.Equal(desiredEntity.Id, persistedEntity.Id);
        //}

        //#endregion Read

        //#region Update

        //[Fact]
        //public async Task UpdateEntityInDatabase()
        //{
        //    var repositoryMock = GetInMemoryEntityRepository();
        //    var entity = FixtureHelper.BuildDefaultEntity();

        //    var savedEntity = await repositoryMock.AddOrUpdateAsync(entity);
        //    var newName = "New Entity Name";
        //    savedEntity.Name = newName;
        //    await repositoryMock.AddOrUpdateAsync(savedEntity);

        //    var updatedEntity = await repositoryMock.GetByIdAsync(savedEntity.Id);

        //    Assert.Equal(updatedEntity.Name, newName);
        //}

        //#endregion Update

        //#region Delete

        //[Fact]
        //public async Task DeleteEntityFromDatabase()
        //{
        //    var repositoryMock = GetInMemoryEntityRepository();
        //    var entity1 = FixtureHelper.BuildDefaultEntity();
        //    var entity2 = FixtureHelper.BuildDefaultEntity();
        //    await repositoryMock.AddOrUpdateAsync(entity1);
        //    await repositoryMock.AddOrUpdateAsync(entity2);

        //    repositoryMock.Delete(entity1.Id);
        //    var Entities = await repositoryMock.GetAllAsync();

        //    Assert.DoesNotContain(entity1, Entities);
        //    Assert.Contains(entity2, Entities);
        //}

        //#endregion Delete
    }
}
