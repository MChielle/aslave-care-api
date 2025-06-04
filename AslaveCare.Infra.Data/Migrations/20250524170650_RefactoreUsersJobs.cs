using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class RefactoreUsersJobs : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Disable",
                table: "Managers");

            migrationBuilder.DropColumn(
                name: "Name",
                table: "Managers");

            migrationBuilder.DropColumn(
                name: "About",
                table: "Employees");

            migrationBuilder.DropColumn(
                name: "Disable",
                table: "Employees");

            migrationBuilder.DropColumn(
                name: "Name",
                table: "Employees");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "Disable",
                table: "Managers",
                type: "boolean",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "Managers",
                type: "character varying(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "About",
                table: "Employees",
                type: "character varying(200)",
                maxLength: 200,
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "Disable",
                table: "Employees",
                type: "boolean",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "Employees",
                type: "character varying(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.UpdateData(
                table: "Employees",
                keyColumn: "Id",
                keyValue: new Guid("71c45363-20e5-4f70-be43-3b46452cd7a0"),
                columns: new[] { "About", "Disable", "Name" },
                values: new object[] { "Dev", false, "Matheus" });

            migrationBuilder.UpdateData(
                table: "Managers",
                keyColumn: "Id",
                keyValue: new Guid("71c45363-20e5-4f70-be43-3b46452cd7a0"),
                columns: new[] { "Disable", "Name" },
                values: new object[] { false, "Matheus" });
        }
    }
}
