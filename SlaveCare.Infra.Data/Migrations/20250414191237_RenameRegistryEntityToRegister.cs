using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SlaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class RenameRegistryEntityToRegister : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "RegistryInStocks");

            migrationBuilder.DropTable(
                name: "RegistriesIn");

            migrationBuilder.CreateTable(
                name: "RegistersIn",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Number = table.Column<int>(type: "int", nullable: false),
                    SupplierId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Donation = table.Column<bool>(type: "tinyint(1)", nullable: false),
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
                    table.PrimaryKey("PK_RegistersIn", x => x.Id);
                    table.ForeignKey(
                        name: "FK_RegistersIn_Suppliers_SupplierId",
                        column: x => x.SupplierId,
                        principalTable: "Suppliers",
                        principalColumn: "Id");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "RegisterInStocks",
                columns: table => new
                {
                    RegisterInId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    StockId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Quantity = table.Column<decimal>(type: "decimal(8,2)", nullable: false),
                    Price = table.Column<decimal>(type: "decimal(8,2)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegisterInStocks", x => new { x.RegisterInId, x.StockId });
                    table.ForeignKey(
                        name: "FK_RegisterInStocks_RegistersIn_RegisterInId",
                        column: x => x.RegisterInId,
                        principalTable: "RegistersIn",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_RegisterInStocks_Stocks_StockId",
                        column: x => x.StockId,
                        principalTable: "Stocks",
                        principalColumn: "Id");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_RegisterInStocks_StockId",
                table: "RegisterInStocks",
                column: "StockId");

            migrationBuilder.CreateIndex(
                name: "IX_RegistersIn_SupplierId",
                table: "RegistersIn",
                column: "SupplierId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "RegisterInStocks");

            migrationBuilder.DropTable(
                name: "RegistersIn");

            migrationBuilder.CreateTable(
                name: "RegistriesIn",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    SupplierId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Apply = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    ApplyDate = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    Description = table.Column<string>(type: "longtext", nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Donation = table.Column<bool>(type: "tinyint(1)", nullable: false),
                    LastChangeDate = table.Column<DateTime>(type: "datetime(6)", nullable: true),
                    Number = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegistriesIn", x => x.Id);
                    table.ForeignKey(
                        name: "FK_RegistriesIn_Suppliers_SupplierId",
                        column: x => x.SupplierId,
                        principalTable: "Suppliers",
                        principalColumn: "Id");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "RegistryInStocks",
                columns: table => new
                {
                    RegistryInId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    StockId = table.Column<Guid>(type: "char(36)", nullable: false, collation: "ascii_general_ci"),
                    Price = table.Column<decimal>(type: "decimal(8,2)", nullable: false),
                    Quantity = table.Column<decimal>(type: "decimal(8,2)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegistryInStocks", x => new { x.RegistryInId, x.StockId });
                    table.ForeignKey(
                        name: "FK_RegistryInStocks_RegistriesIn_RegistryInId",
                        column: x => x.RegistryInId,
                        principalTable: "RegistriesIn",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_RegistryInStocks_Stocks_StockId",
                        column: x => x.StockId,
                        principalTable: "Stocks",
                        principalColumn: "Id");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_RegistriesIn_SupplierId",
                table: "RegistriesIn",
                column: "SupplierId");

            migrationBuilder.CreateIndex(
                name: "IX_RegistryInStocks_StockId",
                table: "RegistryInStocks",
                column: "StockId");
        }
    }
}
