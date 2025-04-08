using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SlaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class ChangeRegistryIn : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Date",
                table: "RegistryIns",
                newName: "ApplyDate");

            migrationBuilder.AddColumn<bool>(
                name: "Applied",
                table: "RegistryIns",
                type: "tinyint(1)",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Applied",
                table: "RegistryIns");

            migrationBuilder.RenameColumn(
                name: "ApplyDate",
                table: "RegistryIns",
                newName: "Date");
        }
    }
}
