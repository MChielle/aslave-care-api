using AslaveCare.Api;
using System.Net;

namespace AslaveCare.Integration.Test.Controllers
{
    public class StockControllerTests : IClassFixture<WebHostApplicationFactory<Startup>>
    {
        private readonly WebHostApplicationFactory<Startup> _factory;

        public StockControllerTests(WebHostApplicationFactory<Startup> factory)
        {
            _factory = factory;
        }

        [Fact]
        public async Task GetStocks_ReturnsSuccess()
        {
            var client = _factory.CreateClient();
            var response = await client.GetAsync("/api/v1/stock");
            Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        }

        [Fact]
        public async Task GetStocks_ReturnsSuccess2()
        {
            var client = _factory.CreateClient();
            var response = await client.GetAsync("/api/v1/stock");
            Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        }
    }
}