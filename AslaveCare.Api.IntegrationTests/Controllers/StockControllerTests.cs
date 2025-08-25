using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using AslaveCare.Api;
using AslaveCare.IntegrationTests.Configuration;
using AslaveCare.IntegrationTests.Fixtures;
using Xunit;

namespace AslaveCare.IntegrationTests.Controllers
{
    public class StockControllerTests : IClassFixture<WebHostApplicationFactory<Startup>>
    {
        private readonly WebHostApplicationFactory<Startup> _factory;

        public StockControllerTests(WebHostApplicationFactory<Startup> factory)
        {
            _factory = factory;
            AuthenticationFixture.BuildAuthenticationHeader(_factory.CreateClient()).Wait();
        }

        [Fact]
        public async Task GetStocks_ReturnsSuccess()
        {
            var client = _factory.CreateClient();
            client.DefaultRequestHeaders.Authorization = AuthenticationFixture.AuthenticationHeader;
            var response = await client.GetAsync("/api/v1/stock");
            Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        }

        [Fact]
        public async Task GetStocks_ReturnsUnauthorized()
        {
            var client = _factory.CreateClient();
            var response = await client.GetAsync("/api/v1/stock");
            Assert.Equal(HttpStatusCode.Unauthorized, response.StatusCode);
        }
    }
}
