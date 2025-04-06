using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SlaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddsDisableToSupplier : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "Disable",
                table: "Suppliers",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Disable",
                table: "Suppliers");
        }
    }
}
