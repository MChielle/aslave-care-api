using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Infra.Data.Constants;
using AslaveCare.Infra.Data.Context;
using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AslaveCare.IntegrationTests.Seed
{
    public class TestDataSeeder
    {
        public static async Task Seed(BaseContext context)
        {
            await SeedUserValidation(context);

            await SeedUser(context);
            
            await SeedUserRole(context);

            await context.SaveChangesAsync();
        }

        private static async Task SeedUserValidation(BaseContext context)
        {
            await context.UserValidations.AddAsync(
                new()
                {
                    Id = new Guid("8BF9B5D9-CAC8-45B1-AC36-B3ACC8CEEBD8"),
                    EmailValidated = true,
                    PhoneNumberValidated = true,
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                });
        }

        private static async Task SeedUser(BaseContext context)
        {
            await context.Users.AddAsync(
                new()
                {
                    Id = new Guid("FD83093B-E084-465F-BEBF-7D76C69D0711"),
                    UserValidationId = new Guid("8BF9B5D9-CAC8-45B1-AC36-B3ACC8CEEBD8"),
                    Email = "teste@teste.com",
                    Name = "Nome Teste",
                    FireBaseCloudMessageToken = "string teste firebase",
                    Password = Encoding.UTF8.GetBytes("YU5pvcXMzGbaNU2xhD3fgRhMAi+ZUsrU6szj2M3XZ/PIqC818xnh835S5uN+nIWu3UgCIS6zOj7OykTn5UT2yX2+iZ7/ddqITIxwYF2uZun5q/7to+bn2Bm5HwPxZczYK4Y4iokBMcymYHb04dGgZ4nvMRSx8T7VSle/6EN/zDLW+k78J4YWHuKkI9ruPumzDXzkUN7QCdJE/xxGQm+Qh7d63jJxgwBdbyaJ/2dMOo5YhRgVue2fld6Dt6pmg6nRS2xKQr9PNSBfOTfi/C5su2jtE4pqN7keuWzp6YfwSKOFOEOlqM6JKctH7/FQu6Qn83Aw6g10qmGsFv5BWDfPWQ=="), //123456
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                });
        }

        private static async Task SeedUserRole(BaseContext context)
        {
            await context.UserRoles.AddAsync(
                new()
                {
                    UserId = new Guid("FD83093B-E084-465F-BEBF-7D76C69D0711"),
                    RoleId = ConstantSeederRole.Roles.First(x => x.Type == UserType.Manager).Id
                });

        }
    }
}