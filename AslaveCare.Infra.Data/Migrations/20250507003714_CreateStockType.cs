using Microsoft.EntityFrameworkCore.Migrations;
using System;

#nullable disable

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class CreateStockType : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<decimal>(
                name: "QuantityLowWarning",
                table: "Stocks",
                type: "numeric(8,2)",
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.AddColumn<string>(
                name: "StockTypeId",
                table: "Stocks",
                type: "character varying(20)",
                maxLength: 20,
                nullable: true);

            migrationBuilder.CreateTable(
                name: "StockTypes",
                columns: table => new
                {
                    Id = table.Column<string>(type: "character varying(20)", maxLength: 20, nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_StockTypes", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Stocks_StockTypeId",
                table: "Stocks",
                column: "StockTypeId");

            migrationBuilder.AddForeignKey(
                name: "FK_Stocks_StockTypes_StockTypeId",
                table: "Stocks",
                column: "StockTypeId",
                principalTable: "StockTypes",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Stocks_StockTypes_StockTypeId",
                table: "Stocks");

            migrationBuilder.DropTable(
                name: "StockTypes");

            migrationBuilder.DropIndex(
                name: "IX_Stocks_StockTypeId",
                table: "Stocks");

            migrationBuilder.DropColumn(
                name: "QuantityLowWarning",
                table: "Stocks");

            migrationBuilder.DropColumn(
                name: "StockTypeId",
                table: "Stocks");
        }
    }
}