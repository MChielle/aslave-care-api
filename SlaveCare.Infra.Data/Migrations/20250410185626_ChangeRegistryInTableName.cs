using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SlaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class ChangeRegistryInTableName : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_RegistryIns_Suppliers_SupplierId",
                table: "RegistryIns");

            migrationBuilder.DropForeignKey(
                name: "FK_RegistryInStocks_RegistryIns_RegistryInId",
                table: "RegistryInStocks");

            migrationBuilder.DropPrimaryKey(
                name: "PK_RegistryIns",
                table: "RegistryIns");

            migrationBuilder.RenameTable(
                name: "RegistryIns",
                newName: "RegistriesIn");

            migrationBuilder.RenameIndex(
                name: "IX_RegistryIns_SupplierId",
                table: "RegistriesIn",
                newName: "IX_RegistriesIn_SupplierId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_RegistriesIn",
                table: "RegistriesIn",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RegistriesIn_Suppliers_SupplierId",
                table: "RegistriesIn",
                column: "SupplierId",
                principalTable: "Suppliers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RegistryInStocks_RegistriesIn_RegistryInId",
                table: "RegistryInStocks",
                column: "RegistryInId",
                principalTable: "RegistriesIn",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_RegistriesIn_Suppliers_SupplierId",
                table: "RegistriesIn");

            migrationBuilder.DropForeignKey(
                name: "FK_RegistryInStocks_RegistriesIn_RegistryInId",
                table: "RegistryInStocks");

            migrationBuilder.DropPrimaryKey(
                name: "PK_RegistriesIn",
                table: "RegistriesIn");

            migrationBuilder.RenameTable(
                name: "RegistriesIn",
                newName: "RegistryIns");

            migrationBuilder.RenameIndex(
                name: "IX_RegistriesIn_SupplierId",
                table: "RegistryIns",
                newName: "IX_RegistryIns_SupplierId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_RegistryIns",
                table: "RegistryIns",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RegistryIns_Suppliers_SupplierId",
                table: "RegistryIns",
                column: "SupplierId",
                principalTable: "Suppliers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RegistryInStocks_RegistryIns_RegistryInId",
                table: "RegistryInStocks",
                column: "RegistryInId",
                principalTable: "RegistryIns",
                principalColumn: "Id");
        }
    }
}
