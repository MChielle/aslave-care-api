using Microsoft.EntityFrameworkCore.Migrations;
using System;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class CreateDataBase : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "RegistersOut",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Number = table.Column<int>(type: "integer", nullable: false),
                    ApplyDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: true),
                    Apply = table.Column<bool>(type: "boolean", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegistersOut", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Roles",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: true),
                    UserType = table.Column<int>(type: "integer", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Roles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Stocks",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: true),
                    Description = table.Column<string>(type: "character varying(200)", maxLength: 200, nullable: true),
                    Quantity = table.Column<decimal>(type: "numeric(8,2)", nullable: false),
                    Disable = table.Column<bool>(type: "boolean", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Stocks", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Suppliers",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: true),
                    PhoneNumber = table.Column<string>(type: "character varying(20)", maxLength: 20, nullable: true),
                    Email = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: true),
                    Disable = table.Column<bool>(type: "boolean", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Suppliers", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "UserValidations",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    EmailConfirmationCode = table.Column<string>(type: "character varying(4)", maxLength: 4, nullable: true),
                    PhoneNumberConfirmationCode = table.Column<string>(type: "character varying(4)", maxLength: 4, nullable: true),
                    EmailValidated = table.Column<bool>(type: "boolean", nullable: false),
                    PhoneNumberValidated = table.Column<bool>(type: "boolean", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserValidations", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "RegisterOutStocks",
                columns: table => new
                {
                    RegisterOutId = table.Column<Guid>(type: "uuid", nullable: false),
                    StockId = table.Column<Guid>(type: "uuid", nullable: false),
                    Quantity = table.Column<decimal>(type: "numeric(8,2)", nullable: false)
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
                });

            migrationBuilder.CreateTable(
                name: "RegistersIn",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Number = table.Column<int>(type: "integer", nullable: false),
                    SupplierId = table.Column<Guid>(type: "uuid", nullable: false),
                    Donation = table.Column<bool>(type: "boolean", nullable: false),
                    ApplyDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    Description = table.Column<string>(type: "text", nullable: true),
                    Apply = table.Column<bool>(type: "boolean", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegistersIn", x => x.Id);
                    table.ForeignKey(
                        name: "FK_RegistersIn_Suppliers_SupplierId",
                        column: x => x.SupplierId,
                        principalTable: "Suppliers",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: true),
                    PhoneNumber = table.Column<string>(type: "character varying(20)", maxLength: 20, nullable: true),
                    Email = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: true),
                    Password = table.Column<byte[]>(type: "bytea", nullable: true),
                    LastLogin = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    AppleUserId = table.Column<string>(type: "text", nullable: true),
                    LastPasswordChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    UserValidationId = table.Column<Guid>(type: "uuid", nullable: false),
                    FireBaseCloudMessageToken = table.Column<string>(type: "text", nullable: true),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Users_UserValidations_UserValidationId",
                        column: x => x.UserValidationId,
                        principalTable: "UserValidations",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "RegisterInStocks",
                columns: table => new
                {
                    RegisterInId = table.Column<Guid>(type: "uuid", nullable: false),
                    StockId = table.Column<Guid>(type: "uuid", nullable: false),
                    Quantity = table.Column<decimal>(type: "numeric(8,2)", nullable: false),
                    Price = table.Column<decimal>(type: "numeric(8,2)", nullable: false)
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
                });

            migrationBuilder.CreateTable(
                name: "Employees",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: true),
                    About = table.Column<string>(type: "character varying(200)", maxLength: 200, nullable: true),
                    PhotoPath = table.Column<string>(type: "character varying(150)", maxLength: 150, nullable: true),
                    Disable = table.Column<bool>(type: "boolean", nullable: false),
                    SplitPercentage = table.Column<decimal>(type: "numeric", nullable: false),
                    UserId = table.Column<Guid>(type: "uuid", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Employees", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Employees_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Managers",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "character varying(50)", maxLength: 50, nullable: true),
                    PhotoPath = table.Column<string>(type: "character varying(150)", maxLength: 150, nullable: true),
                    Disable = table.Column<bool>(type: "boolean", nullable: false),
                    UserId = table.Column<Guid>(type: "uuid", nullable: false),
                    CreationDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    DeletionDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true),
                    LastChangeDate = table.Column<DateTime>(type: "timestamp with time zone", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Managers", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Managers_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "UserRoles",
                columns: table => new
                {
                    UserId = table.Column<Guid>(type: "uuid", nullable: false),
                    RoleId = table.Column<Guid>(type: "uuid", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserRoles", x => new { x.UserId, x.RoleId });
                    table.ForeignKey(
                        name: "FK_UserRoles_Roles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "Roles",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_UserRoles_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id");
                });

            migrationBuilder.InsertData(
                table: "Roles",
                columns: new[] { "Id", "CreationDate", "DeletionDate", "LastChangeDate", "Name", "UserType" },
                values: new object[,]
                {
                    { new Guid("574ac0d0-2e84-44d7-8949-a8169fa3bbff"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null, "Manager", 0 },
                    { new Guid("a869d27c-b75d-424b-a2d6-c91e273d631b"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null, "Employee", 0 },
                    { new Guid("e589a9e9-1ba9-46e8-8487-ec68b2f9ef76"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null, "Master", 0 }
                });

            migrationBuilder.InsertData(
                table: "UserValidations",
                columns: new[] { "Id", "CreationDate", "DeletionDate", "EmailConfirmationCode", "EmailValidated", "LastChangeDate", "PhoneNumberConfirmationCode", "PhoneNumberValidated" },
                values: new object[,]
                {
                    { new Guid("6d3dd407-d5e5-41ce-a49b-599145fe89fa"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null, true, null, null, true },
                    { new Guid("6d3dd407-d5e5-41ce-a49b-599145fe89fc"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null, true, null, null, true },
                    { new Guid("f9961144-2f1e-41c4-b96c-79e62c20b21b"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, null, true, null, null, true }
                });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "AppleUserId", "CreationDate", "DeletionDate", "Email", "FireBaseCloudMessageToken", "LastChangeDate", "LastLogin", "LastPasswordChangeDate", "Name", "Password", "PhoneNumber", "UserValidationId" },
                values: new object[,]
                {
                    { new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9bc"), null, new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "matheuschielle+employee@gmail.com", "ds4Pz40YTeazL39DToMz5P:APA91bHUoBotVr6Mi9d3EfsbgVGrHUdWfmfGslBP2hFboNcdc7MlTQRt2aE2DZTNad-0-ISU3Bk_wON4eLNJZw_pIQ5tH3lPQDJy-4XglcSH5LAufDKmqjy3K0osz7uph6oTknwHpGem", null, null, null, "Matheus", new byte[] { 65, 76, 109, 69, 56, 75, 74, 97, 107, 55, 89, 89, 80, 66, 49, 70, 87, 56, 106, 115, 72, 119, 99, 120, 103, 49, 103, 87, 106, 89, 98, 80, 86, 70, 111, 121, 50, 105, 82, 104, 43, 113, 111, 112, 90, 103, 112, 69, 48, 77, 90, 117, 70, 117, 87, 122, 107, 110, 56, 77, 100, 117, 53, 111, 109, 85, 112, 50, 87, 88, 116, 65, 116, 77, 54, 69, 87, 87, 120, 52, 99, 109, 82, 117, 99, 74, 102, 47, 111, 84, 82, 81, 75, 48, 106, 55, 104, 117, 72, 47, 65, 120, 107, 81, 120, 68, 84, 43, 101, 70, 43, 100, 105, 120, 47, 57, 56, 52, 76, 52, 85, 106, 68, 47, 97, 66, 119, 51, 100, 98, 117, 81, 107, 51, 101, 122, 74, 43, 105, 100, 69, 85, 87, 110, 105, 49, 43, 87, 49, 66, 84, 106, 86, 109, 67, 55, 68, 88, 65, 49, 115, 68, 120, 101, 53, 103, 54, 88, 90, 52, 49, 43, 110, 105, 73, 107, 52, 73, 107, 118, 50, 67, 76, 74, 65, 43, 86, 76, 69, 69, 122, 84, 112, 83, 113, 110, 111, 74, 83, 70, 105, 82, 79, 120, 118, 71, 118, 103, 72, 49, 51, 99, 115, 90, 101, 121, 52, 84, 78, 73, 50, 89, 84, 117, 71, 116, 117, 77, 105, 47, 71, 107, 75, 87, 97, 115, 43, 72, 66, 74, 102, 70, 82, 84, 82, 72, 77, 90, 73, 110, 112, 88, 98, 101, 82, 71, 68, 117, 74, 49, 107, 121, 113, 105, 67, 103, 118, 57, 101, 72, 106, 105, 120, 67, 113, 112, 117, 73, 69, 99, 54, 84, 76, 79, 54, 83, 57, 117, 49, 112, 55, 97, 67, 102, 67, 87, 100, 84, 85, 108, 69, 66, 53, 101, 53, 100, 85, 67, 69, 76, 47, 106, 99, 109, 122, 118, 105, 88, 113, 66, 65, 52, 52, 122, 118, 70, 120, 69, 108, 105, 101, 50, 67, 104, 103, 66, 76, 122, 108, 48, 100, 65, 61, 61 }, null, new Guid("6d3dd407-d5e5-41ce-a49b-599145fe89fa") },
                    { new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9bd"), null, new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "matheuschielle+master@gmail.com", "ds4Pz40YTeazL39DToMz5P:APA91bHUoBotVr6Mi9d3EfsbgVGrHUdWfmfGslBP2hFboNcdc7MlTQRt2aE2DZTNad-0-ISU3Bk_wON4eLNJZw_pIQ5tH3lPQDJy-4XglcSH5LAufDKmqjy3K0osz7uph6oTknwHpGem", null, null, null, "Matheus", new byte[] { 65, 76, 109, 69, 56, 75, 74, 97, 107, 55, 89, 89, 80, 66, 49, 70, 87, 56, 106, 115, 72, 119, 99, 120, 103, 49, 103, 87, 106, 89, 98, 80, 86, 70, 111, 121, 50, 105, 82, 104, 43, 113, 111, 112, 90, 103, 112, 69, 48, 77, 90, 117, 70, 117, 87, 122, 107, 110, 56, 77, 100, 117, 53, 111, 109, 85, 112, 50, 87, 88, 116, 65, 116, 77, 54, 69, 87, 87, 120, 52, 99, 109, 82, 117, 99, 74, 102, 47, 111, 84, 82, 81, 75, 48, 106, 55, 104, 117, 72, 47, 65, 120, 107, 81, 120, 68, 84, 43, 101, 70, 43, 100, 105, 120, 47, 57, 56, 52, 76, 52, 85, 106, 68, 47, 97, 66, 119, 51, 100, 98, 117, 81, 107, 51, 101, 122, 74, 43, 105, 100, 69, 85, 87, 110, 105, 49, 43, 87, 49, 66, 84, 106, 86, 109, 67, 55, 68, 88, 65, 49, 115, 68, 120, 101, 53, 103, 54, 88, 90, 52, 49, 43, 110, 105, 73, 107, 52, 73, 107, 118, 50, 67, 76, 74, 65, 43, 86, 76, 69, 69, 122, 84, 112, 83, 113, 110, 111, 74, 83, 70, 105, 82, 79, 120, 118, 71, 118, 103, 72, 49, 51, 99, 115, 90, 101, 121, 52, 84, 78, 73, 50, 89, 84, 117, 71, 116, 117, 77, 105, 47, 71, 107, 75, 87, 97, 115, 43, 72, 66, 74, 102, 70, 82, 84, 82, 72, 77, 90, 73, 110, 112, 88, 98, 101, 82, 71, 68, 117, 74, 49, 107, 121, 113, 105, 67, 103, 118, 57, 101, 72, 106, 105, 120, 67, 113, 112, 117, 73, 69, 99, 54, 84, 76, 79, 54, 83, 57, 117, 49, 112, 55, 97, 67, 102, 67, 87, 100, 84, 85, 108, 69, 66, 53, 101, 53, 100, 85, 67, 69, 76, 47, 106, 99, 109, 122, 118, 105, 88, 113, 66, 65, 52, 52, 122, 118, 70, 120, 69, 108, 105, 101, 50, 67, 104, 103, 66, 76, 122, 108, 48, 100, 65, 61, 61 }, null, new Guid("f9961144-2f1e-41c4-b96c-79e62c20b21b") },
                    { new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9be"), null, new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "matheuschielle+manager@gmail.com", "ds4Pz40YTeazL39DToMz5P:APA91bHUoBotVr6Mi9d3EfsbgVGrHUdWfmfGslBP2hFboNcdc7MlTQRt2aE2DZTNad-0-ISU3Bk_wON4eLNJZw_pIQ5tH3lPQDJy-4XglcSH5LAufDKmqjy3K0osz7uph6oTknwHpGem", null, null, null, "Matheus", new byte[] { 65, 76, 109, 69, 56, 75, 74, 97, 107, 55, 89, 89, 80, 66, 49, 70, 87, 56, 106, 115, 72, 119, 99, 120, 103, 49, 103, 87, 106, 89, 98, 80, 86, 70, 111, 121, 50, 105, 82, 104, 43, 113, 111, 112, 90, 103, 112, 69, 48, 77, 90, 117, 70, 117, 87, 122, 107, 110, 56, 77, 100, 117, 53, 111, 109, 85, 112, 50, 87, 88, 116, 65, 116, 77, 54, 69, 87, 87, 120, 52, 99, 109, 82, 117, 99, 74, 102, 47, 111, 84, 82, 81, 75, 48, 106, 55, 104, 117, 72, 47, 65, 120, 107, 81, 120, 68, 84, 43, 101, 70, 43, 100, 105, 120, 47, 57, 56, 52, 76, 52, 85, 106, 68, 47, 97, 66, 119, 51, 100, 98, 117, 81, 107, 51, 101, 122, 74, 43, 105, 100, 69, 85, 87, 110, 105, 49, 43, 87, 49, 66, 84, 106, 86, 109, 67, 55, 68, 88, 65, 49, 115, 68, 120, 101, 53, 103, 54, 88, 90, 52, 49, 43, 110, 105, 73, 107, 52, 73, 107, 118, 50, 67, 76, 74, 65, 43, 86, 76, 69, 69, 122, 84, 112, 83, 113, 110, 111, 74, 83, 70, 105, 82, 79, 120, 118, 71, 118, 103, 72, 49, 51, 99, 115, 90, 101, 121, 52, 84, 78, 73, 50, 89, 84, 117, 71, 116, 117, 77, 105, 47, 71, 107, 75, 87, 97, 115, 43, 72, 66, 74, 102, 70, 82, 84, 82, 72, 77, 90, 73, 110, 112, 88, 98, 101, 82, 71, 68, 117, 74, 49, 107, 121, 113, 105, 67, 103, 118, 57, 101, 72, 106, 105, 120, 67, 113, 112, 117, 73, 69, 99, 54, 84, 76, 79, 54, 83, 57, 117, 49, 112, 55, 97, 67, 102, 67, 87, 100, 84, 85, 108, 69, 66, 53, 101, 53, 100, 85, 67, 69, 76, 47, 106, 99, 109, 122, 118, 105, 88, 113, 66, 65, 52, 52, 122, 118, 70, 120, 69, 108, 105, 101, 50, 67, 104, 103, 66, 76, 122, 108, 48, 100, 65, 61, 61 }, null, new Guid("6d3dd407-d5e5-41ce-a49b-599145fe89fc") }
                });

            migrationBuilder.InsertData(
                table: "Employees",
                columns: new[] { "Id", "About", "CreationDate", "DeletionDate", "Disable", "LastChangeDate", "Name", "PhotoPath", "SplitPercentage", "UserId" },
                values: new object[] { new Guid("71c45363-20e5-4f70-be43-3b46452cd7a0"), "Dev", new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, false, null, "Matheus", null, 0m, new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9bc") });

            migrationBuilder.InsertData(
                table: "Managers",
                columns: new[] { "Id", "CreationDate", "DeletionDate", "Disable", "LastChangeDate", "Name", "PhotoPath", "UserId" },
                values: new object[] { new Guid("71c45363-20e5-4f70-be43-3b46452cd7a0"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, false, null, "Matheus", null, new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9be") });

            migrationBuilder.InsertData(
                table: "UserRoles",
                columns: new[] { "RoleId", "UserId" },
                values: new object[,]
                {
                    { new Guid("a869d27c-b75d-424b-a2d6-c91e273d631b"), new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9bc") },
                    { new Guid("e589a9e9-1ba9-46e8-8487-ec68b2f9ef76"), new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9bd") },
                    { new Guid("574ac0d0-2e84-44d7-8949-a8169fa3bbff"), new Guid("ef2c54d6-a131-4e5a-b757-e3ebdd67e9be") }
                });

            migrationBuilder.CreateIndex(
                name: "IX_Employees_UserId",
                table: "Employees",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_Managers_UserId",
                table: "Managers",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_RegisterInStocks_StockId",
                table: "RegisterInStocks",
                column: "StockId");

            migrationBuilder.CreateIndex(
                name: "IX_RegisterOutStocks_StockId",
                table: "RegisterOutStocks",
                column: "StockId");

            migrationBuilder.CreateIndex(
                name: "IX_RegistersIn_SupplierId",
                table: "RegistersIn",
                column: "SupplierId");

            migrationBuilder.CreateIndex(
                name: "IX_UserRoles_RoleId",
                table: "UserRoles",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "IX_Users_UserValidationId",
                table: "Users",
                column: "UserValidationId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Employees");

            migrationBuilder.DropTable(
                name: "Managers");

            migrationBuilder.DropTable(
                name: "RegisterInStocks");

            migrationBuilder.DropTable(
                name: "RegisterOutStocks");

            migrationBuilder.DropTable(
                name: "UserRoles");

            migrationBuilder.DropTable(
                name: "RegistersIn");

            migrationBuilder.DropTable(
                name: "RegistersOut");

            migrationBuilder.DropTable(
                name: "Stocks");

            migrationBuilder.DropTable(
                name: "Roles");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropTable(
                name: "Suppliers");

            migrationBuilder.DropTable(
                name: "UserValidations");
        }
    }
}