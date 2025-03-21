
using SlaveCare.Infra.Data.Context;
using System;

namespace SlaveCare.Api.IntegrationTests.Configuration
{
    public class TestDataSeeder
    {
        private readonly BaseContext _context;

        public TestDataSeeder(BaseContext context)
        {
            _context = context;

            _context.Database.EnsureDeleted();
            _context.Database.EnsureCreated();

            //var countries = Task.Run(async () => await _context.Country.ToListAsync()).Result;

            //if (countries.Count == 0)
            throw new NotImplementedException();
        }
    }
}