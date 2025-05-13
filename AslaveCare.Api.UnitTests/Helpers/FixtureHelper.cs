using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Models.v1.User;
using AutoFixture;
using System;

namespace AslaveCare.Api.UnitTests.Helpers
{
    public class FixtureHelper
    {
        public Fixture fixture = new Fixture();

        public FixtureHelper()
        {
            //fixture.Customizations.Add(new TypeRelay(typeof(Address), typeof(CustomerAddress)));

            fixture.Behaviors.Remove(new ThrowingRecursionBehavior());
            fixture.Behaviors.Add(new OmitOnRecursionBehavior());
        }

        public User BuildUser()
        {
            var user = fixture.Build<User>()
                .Without(x => x.Id)
                .Without(x => x.CreationDate)
                .Without(x => x.DeletionDate)
                .Without(x => x.LastChangeDate)
                .Without(x => x.UserRoles)
                .Create();

            return user;
        }

        public UserAddModel BuildUserAddModel()
        {
            var user = fixture.Build<UserAddModel>()
                .Without(x => x.Id)
                .Create();

            return user;
        }

        public UserUpdateModel BuildUserUpdateModel()
        {
            var user = fixture.Build<UserUpdateModel>()
                .Without(x => x.Id)
                .Create();

            return user;
        }

        internal static object BuildDefaultEntity()
        {
            throw new NotImplementedException();
        }
    }
}