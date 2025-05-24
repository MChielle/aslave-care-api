using AslaveCare.Domain.Entities;
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
                    Id = "Alimento",
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                },
                new()
                {
                    Id = "Higiene",
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                },
                new()
                {
                    Id = "Limpeza",
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                },
                new()
                {
                    Id = "Medicamento",
                    CreationDate = ConstantSeeder.DEFAULT_SEED_DATETIME,
                }
            };
    }
}