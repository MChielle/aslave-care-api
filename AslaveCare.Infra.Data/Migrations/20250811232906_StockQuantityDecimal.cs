using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class StockQuantityDecimal : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<decimal>(
                name: "QuantityLowWarning",
                table: "Stocks",
                type: "numeric(8,3)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,2)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Quantity",
                table: "Stocks",
                type: "numeric(8,3)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,2)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Quantity",
                table: "RegisterOutStocks",
                type: "numeric(8,3)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,2)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Quantity",
                table: "RegisterInStocks",
                type: "numeric(8,3)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,2)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Price",
                table: "RegisterInStocks",
                type: "numeric(8,3)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,2)");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<decimal>(
                name: "QuantityLowWarning",
                table: "Stocks",
                type: "numeric(8,2)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,3)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Quantity",
                table: "Stocks",
                type: "numeric(8,2)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,3)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Quantity",
                table: "RegisterOutStocks",
                type: "numeric(8,2)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,3)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Quantity",
                table: "RegisterInStocks",
                type: "numeric(8,2)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,3)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Price",
                table: "RegisterInStocks",
                type: "numeric(8,2)",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(8,3)");
        }
    }
}
