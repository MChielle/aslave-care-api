using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SlaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class CreateRegisterOut : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "RegistersOut",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Number = table.Column<int>(type: "int", nullable: false),
                    ApplyDate = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    Description = table.Column<string>(type: "longtext", nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Apply = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "datetime(6)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegistersOut", x => x.Id);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "RegisterOutStocks",
                columns: table => new
                {
                    RegisterOutId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    StockId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Quantity = table.Column<decimal>(type: "decimal(8,2)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegisterOutStocks", x => new { x.RegisterOutId, x.StockId });
                    table.ForeignKey(
                        name: "FK_RegisterOutStocks_RegistersOut_RegisterOutId",
                        column: x => x.RegisterOutId,
                        principalTable: "RegistersOut",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_RegisterOutStocks_Stocks_StockId",
                        column: x => x.StockId,
                        principalTable: "Stocks",
                        principalColumn: "Id");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_RegisterOutStocks_StockId",
                table: "RegisterOutStocks",
                column: "StockId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "RegisterOutStocks");

            migrationBuilder.DropTable(
                name: "RegistersOut");
        }
    }
}
