using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Extensions;
using System.Collections.Generic;

namespace AslaveCare.Infra.Data.Constants
{
    public class ConstantStockTypeSeeder
    {
        internal static List<StockType> StockTypes() =>
            new List<StockType>
            {
                new()
                {
                    Id = Domain.Entities.Enums.StockType.Food.GetDescription(),
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                },
                new()
                {
                    Id = Domain.Entities.Enums.StockType.Hygiene.GetDescription(),
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                },
                new()
                {
                    Id = Domain.Entities.Enums.StockType.Cleaning.GetDescription(),
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                },
                new()
                {
                    Id = Domain.Entities.Enums.StockType.Medicine.GetDescription(),
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                },
                new()
                {
                    Id = Domain.Entities.Enums.StockType.FruitsAndVegetables.GetDescription(),
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                },
                new()
                {
                    Id = Domain.Entities.Enums.StockType.Protein.GetDescription(),
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                }
            };
    }
}