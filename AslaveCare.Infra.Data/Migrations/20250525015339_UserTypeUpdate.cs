using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class UserTypeUpdate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "Roles",
                keyColumn: "Id",
                keyValue: new Guid("574ac0d0-2e84-44d7-8949-a8169fa3bbff"),
                column: "UserType",
                value: 1);

            migrationBuilder.UpdateData(
                table: "Roles",
                keyColumn: "Id",
                keyValue: new Guid("a869d27c-b75d-424b-a2d6-c91e273d631b"),
                column: "UserType",
                value: 2);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "Roles",
                keyColumn: "Id",
                keyValue: new Guid("574ac0d0-2e84-44d7-8949-a8169fa3bbff"),
                column: "UserType",
                value: 0);

            migrationBuilder.UpdateData(
                table: "Roles",
                keyColumn: "Id",
                keyValue: new Guid("a869d27c-b75d-424b-a2d6-c91e273d631b"),
                column: "UserType",
                value: 0);
        }
    }
}
