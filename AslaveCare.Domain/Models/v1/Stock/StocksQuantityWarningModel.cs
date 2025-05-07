namespace AslaveCare.Domain.Models.v1.Stock
{
    public class StocksQuantityWarningModel
    {
        public int Total { get; set; }

        public StocksQuantityWarningModel(int total)
        {
            Total = total;
        }
    }
}
