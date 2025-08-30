using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddNewStockTypes : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "StockTypes",
                columns: new[] { "Id", "CreationDate", "DeletionDate", "LastChangeDate" },
                values: new object[,]
                {
                    { "Hortifruti", new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null },
                    { "Proteína", new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "StockTypes",
                keyColumn: "Id",
                keyValue: "Hortifruti");

            migrationBuilder.DeleteData(
                table: "StockTypes",
                keyColumn: "Id",
                keyValue: "Proteína");
        }
    }
}
