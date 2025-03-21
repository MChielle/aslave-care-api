using SlaveCare.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SlaveCare.Infra.Data.Constants.SeederDev
{
    internal static class ConstantSeederUser
    {
        internal static List<User> EmployeeUsers() =>
            new List<User>
            {
                new()
                {
                    Id = new Guid("EF2C54D6-A131-4E5A-B757-E3EBDD67E9BC"),
                    UserValidationId = ConstantSeederUserValidation.EmployeeUserValidations()[0].Id,
                    Email = "matheuschielle+employee@gmail.com",
                    Name = "Matheus",
                    FireBaseCloudMessageToken = "ds4Pz40YTeazL39DToMz5P:APA91bHUoBotVr6Mi9d3EfsbgVGrHUdWfmfGslBP2hFboNcdc7MlTQRt2aE2DZTNad-0-ISU3Bk_wON4eLNJZw_pIQ5tH3lPQDJy-4XglcSH5LAufDKmqjy3K0osz7uph6oTknwHpGem",
                    Password = Encoding.UTF8.GetBytes("ALmE8KJak7YYPB1FW8jsHwcxg1gWjYbPVFoy2iRh+qopZgpE0MZuFuWzkn8Mdu5omUp2WXtAtM6EWWx4cmRucJf/oTRQK0j7huH/AxkQxDT+eF+dix/984L4UjD/aBw3dbuQk3ezJ+idEUWni1+W1BTjVmC7DXA1sDxe5g6XZ41+niIk4Ikv2CLJA+VLEEzTpSqnoJSFiROxvGvgH13csZey4TNI2YTuGtuMi/GkKWas+HBJfFRTRHMZInpXbeRGDuJ1kyqiCgv9eHjixCqpuIEc6TLO6S9u1p7aCfCWdTUlEB5e5dUCEL/jcmzviXqBA44zvFxElie2ChgBLzl0dA=="), //senha 123456
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                }
            };

        internal static List<User> MasterUsers() =>
            new List<User>
            {
                new()
                {
                    Id = new Guid("EF2C54D6-A131-4E5A-B757-E3EBDD67E9BD"),
                    UserValidationId = ConstantSeederUserValidation.MasterUserValidations()[0].Id,
                    Email = "matheuschielle+master@gmail.com",
                    Name = "Matheus",
                    FireBaseCloudMessageToken = "ds4Pz40YTeazL39DToMz5P:APA91bHUoBotVr6Mi9d3EfsbgVGrHUdWfmfGslBP2hFboNcdc7MlTQRt2aE2DZTNad-0-ISU3Bk_wON4eLNJZw_pIQ5tH3lPQDJy-4XglcSH5LAufDKmqjy3K0osz7uph6oTknwHpGem",
                    Password = Encoding.UTF8.GetBytes("ALmE8KJak7YYPB1FW8jsHwcxg1gWjYbPVFoy2iRh+qopZgpE0MZuFuWzkn8Mdu5omUp2WXtAtM6EWWx4cmRucJf/oTRQK0j7huH/AxkQxDT+eF+dix/984L4UjD/aBw3dbuQk3ezJ+idEUWni1+W1BTjVmC7DXA1sDxe5g6XZ41+niIk4Ikv2CLJA+VLEEzTpSqnoJSFiROxvGvgH13csZey4TNI2YTuGtuMi/GkKWas+HBJfFRTRHMZInpXbeRGDuJ1kyqiCgv9eHjixCqpuIEc6TLO6S9u1p7aCfCWdTUlEB5e5dUCEL/jcmzviXqBA44zvFxElie2ChgBLzl0dA=="), //senha 123456
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                },
            };

        internal static List<User> ManagerUsers() =>
            new List<User>
            {
                new()
                {
                    Id = new Guid("EF2C54D6-A131-4E5A-B757-E3EBDD67E9BE"),
                    UserValidationId = ConstantSeederUserValidation.ManagerUserValidations()[0].Id,
                    Email = "matheuschielle+manager@gmail.com",
                    Name = "Matheus",
                    FireBaseCloudMessageToken = "ds4Pz40YTeazL39DToMz5P:APA91bHUoBotVr6Mi9d3EfsbgVGrHUdWfmfGslBP2hFboNcdc7MlTQRt2aE2DZTNad-0-ISU3Bk_wON4eLNJZw_pIQ5tH3lPQDJy-4XglcSH5LAufDKmqjy3K0osz7uph6oTknwHpGem",
                    Password = Encoding.UTF8.GetBytes("ALmE8KJak7YYPB1FW8jsHwcxg1gWjYbPVFoy2iRh+qopZgpE0MZuFuWzkn8Mdu5omUp2WXtAtM6EWWx4cmRucJf/oTRQK0j7huH/AxkQxDT+eF+dix/984L4UjD/aBw3dbuQk3ezJ+idEUWni1+W1BTjVmC7DXA1sDxe5g6XZ41+niIk4Ikv2CLJA+VLEEzTpSqnoJSFiROxvGvgH13csZey4TNI2YTuGtuMi/GkKWas+HBJfFRTRHMZInpXbeRGDuJ1kyqiCgv9eHjixCqpuIEc6TLO6S9u1p7aCfCWdTUlEB5e5dUCEL/jcmzviXqBA44zvFxElie2ChgBLzl0dA=="), //senha 123456
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME
                },
            };
    }
}