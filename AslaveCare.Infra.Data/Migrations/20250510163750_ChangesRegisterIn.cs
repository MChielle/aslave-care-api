using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class ChangesRegisterIn : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<DateTime>(
                name: "ApplyDate",
                table: "RegistersOut",
                type: "timestamp with time zone",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "timestamp with time zone");

            migrationBuilder.AlterColumn<DateTime>(
                name: "ApplyDate",
                table: "RegistersIn",
                type: "timestamp with time zone",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "timestamp with time zone");

            migrationBuilder.InsertData(
                table: "StockTypes",
                columns: new[] { "Id", "CreationDate", "DeletionDate", "LastChangeDate" },
                values: new object[,]
                {
                    { "Alimento", new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null },
                    { "Limpeza", new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null },
                    { "Medicamento", new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "StockTypes",
                keyColumn: "Id",
                keyValue: "Alimento");

            migrationBuilder.DeleteData(
                table: "StockTypes",
                keyColumn: "Id",
                keyValue: "Limpeza");

            migrationBuilder.DeleteData(
                table: "StockTypes",
                keyColumn: "Id",
                keyValue: "Medicamento");

            migrationBuilder.AlterColumn<DateTime>(
                name: "ApplyDate",
                table: "RegistersOut",
                type: "timestamp with time zone",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                oldClrType: typeof(DateTime),
                oldType: "timestamp with time zone",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "ApplyDate",
                table: "RegistersIn",
                type: "timestamp with time zone",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified),
                oldClrType: typeof(DateTime),
                oldType: "timestamp with time zone",
                oldNullable: true);
        }
    }
}
