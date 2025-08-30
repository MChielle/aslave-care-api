using AslaveCare.Infra.Data.Context;

namespace AslaveCare.Integration.Test.Seed
{
    public class TestDataSeeder
    {
        public static void Seed(BaseContext context)
        {
            // Adicione aqui dados de teste necessários
            // context.Users.Add(new User { ... });

            context.SaveChanges();
        }
    }
}