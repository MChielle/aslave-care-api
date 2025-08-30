using AslaveCare.Api;
using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.IntegrationTests.Configuration;
using AslaveCare.IntegrationTests.Fixtures;
using Newtonsoft.Json;
using System;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
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
        private HttpClient CreateAuthenticatedClient()
        {
            var client = _factory.CreateClient();
            client.DefaultRequestHeaders.Authorization = AuthenticationFixture.AuthenticationHeader;
            return client;
        }

        [Fact]
        public async Task GetStocks_ReturnsSuccess()
        {
            var client = CreateAuthenticatedClient();
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

        [Fact]
        public async Task GetStockById_ReturnsSuccessOrNotFound()
        {
            var client = CreateAuthenticatedClient();
            // Use a known seeded ID or create a new one for testing
            var knownId = "00000000-0000-0000-0000-000000000001";
            var response = await client.GetAsync($"/api/v1/stock/{knownId}");
            Assert.True(
                response.StatusCode == HttpStatusCode.OK ||
                response.StatusCode == HttpStatusCode.NotFound
            );
        }

        [Fact]
        public async Task GetStockById_ReturnsUnauthorized()
        {
            var client = _factory.CreateClient();
            var knownId = "00000000-0000-0000-0000-000000000001";
            var response = await client.GetAsync($"/api/v1/stock/{knownId}");
            Assert.Equal(HttpStatusCode.Unauthorized, response.StatusCode);
        }

        [Fact]
        public async Task PostStock_ReturnsCreatedOrBadRequest()
        {
            var client = CreateAuthenticatedClient();
            var newStock = new StockGetModel
            {
                Name = "Test Stock",
                Description = "Integration test stock",
                Quantity = 10,
                Disable = false,
                QuantityLowWarning = 2,
                StockTypeId = StockType.Cleaning.GetDescription()
            };
            var content = new StringContent(JsonConvert.SerializeObject(newStock), Encoding.UTF8, "application/json");
            var response = await client.PostAsync("/api/v1/stock", content);
            Assert.True(
                response.StatusCode == HttpStatusCode.Created ||
                response.StatusCode == HttpStatusCode.BadRequest ||
                response.StatusCode == HttpStatusCode.Conflict
            );
        }

        [Fact]
        public async Task PutStock_ReturnsOkOrBadRequest()
        {
            var client = CreateAuthenticatedClient();
            var updateId = "00000000-0000-0000-0000-000000000001";
            var updateStock = new StockGetModel
            {
                Id = Guid.Parse(updateId),
                Name = "Updated Stock",
                Description = "Updated description",
                Quantity = 20,
                Disable = false,
                QuantityLowWarning = 5,
                StockTypeId = StockType.FruitsAndVegetables.GetDescription()
            };
            var content = new StringContent(JsonConvert.SerializeObject(updateStock), Encoding.UTF8, "application/json");
            var response = await client.PutAsync($"/api/v1/stock/{updateId}", content);
            Assert.True(
                response.StatusCode == HttpStatusCode.OK ||
                response.StatusCode == HttpStatusCode.BadRequest ||
                response.StatusCode == HttpStatusCode.NotFound
            );
        }

        [Fact]
        public async Task DeleteStock_ReturnsOkOrNotFound()
        {
            var client = CreateAuthenticatedClient();
            var deleteId = "00000000-0000-0000-0000-000000000002";
            var response = await client.DeleteAsync($"/api/v1/stock/{deleteId}");
            Assert.True(
                response.StatusCode == HttpStatusCode.OK ||
                response.StatusCode == HttpStatusCode.NotFound
            );
        }
    }
}
