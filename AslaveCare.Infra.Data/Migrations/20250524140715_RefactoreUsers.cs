using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class RefactoreUsers : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "SplitPercentage",
                table: "Employees");

            migrationBuilder.AddColumn<bool>(
                name: "Disable",
                table: "Users",
                type: "boolean",
                nullable: false,
                defaultValue: false);

            migrationBuilder.InsertData(
                table: "StockTypes",
                columns: new[] { "Id", "CreationDate", "DeletionDate", "LastChangeDate" },
                values: new object[] { "Higiene", new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9bc"),
                column: "Disable",
                value: false);

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9bd"),
                column: "Disable",
                value: false);

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9be"),
                column: "Disable",
                value: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "StockTypes",
                keyColumn: "Id",
                keyValue: "Higiene");

            migrationBuilder.DropColumn(
                name: "Disable",
                table: "Users");

            migrationBuilder.AddColumn<decimal>(
                name: "SplitPercentage",
                table: "Employees",
                type: "numeric",
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.UpdateData(
                table: "Employees",
                keyColumn: "Id",
                keyValue: new Guid("71c45363-20e5-4f70-be43-3b46452cd7a0"),
                column: "SplitPercentage",
                value: 0m);
        }
    }
}
