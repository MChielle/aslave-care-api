using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace AslaveCare.Infra.Data.Migrations
{
    /// <inheritdoc />
    public partial class CreateStockSeed : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "Stocks",
                columns: new[] { "Id", "CreationDate", "DeletionDate", "Description", "Disable", "LastChangeDate", "Name", "Quantity", "QuantityLowWarning", "StockTypeId" },
                values: new object[,]
                {
                    { new Guid("00000000-0000-0000-0000-000000000001"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Achocolatado", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000002"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Achocolatado Líquido L", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000003"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Açucar 1 Kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000004"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Açucar 2 Kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000005"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Açucar 5Kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000006"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Adoçante", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000007"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Arroz 500g", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000008"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Arroz 1 Kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000009"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Arroz 2Kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000010"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Arroz 5Kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000011"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Atum", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000012"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Azeite de Oliva", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000013"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Biscoito Doce", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000014"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Biscoito Salgado", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000015"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Bolo pronto", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000016"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Bom Bom cx", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000017"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Café 250Kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000018"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Café 500g", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000019"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Chá", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000020"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Chimia - doce de leite", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000021"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Creme de leite", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000022"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Erva mate", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000023"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Ervilha em lata", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000024"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Extrato/molho de Tomate", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000025"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha Aveia 170g", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000026"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha Aveia 500g", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000027"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha Aveia 1kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000028"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha de mandioca 1kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000029"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha de mandioca 500g", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000030"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha de milho 500g", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000031"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha de milho 1kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000032"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha de Trigo 1kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000033"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha de Trigo 5kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000034"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farinha Integral 1Kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000035"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Farofa", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000036"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Feijão 250g", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000037"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Feijão 500g", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000038"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Feijão 1kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000039"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Fermento biológico", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000040"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Fermento de bolo", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000041"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Gelatina", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000042"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Gelatina 1kg", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000043"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Granola", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000044"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Iogurte 1l", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000045"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Leite", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000046"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Leite condensado", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000047"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Leite em pó", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000048"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Lentilha", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000049"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Maionese", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000050"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Maisena", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000051"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Margarina", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000052"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Massa", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000053"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Milho de pipoca", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000054"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Milho em lata", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000055"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Miojo", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000056"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Óleo de soja", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000057"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "ovos", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000058"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Polentina", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000059"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Polvilho", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000060"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Refri lata", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000061"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Requeijão", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000062"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sal", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000063"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sal Grosso", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000064"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Salsicha lata", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000065"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sardinha", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000066"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Seleta lata", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000067"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Suco pó pc", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000068"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sucoliq 1L", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000069"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Temperos diversos", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000070"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Vinagre", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000071"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Vinagre Balsâmico", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000072"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Absorvente Geriátrico", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000073"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Álcool 500ml", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000074"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Alcool 1L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000075"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Álcool em gel", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000076"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Amaciante 5L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000077"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Amaciante 2L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000078"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Bom bril", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000079"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Cloro (Q-Boa) 1L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000080"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Cloro (Q-Boa) 2L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000081"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Cloro (Q-Boa) 5L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000082"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Coala", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000083"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Cotonete caixa", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000084"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Creme dental", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000085"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Condicionador de Cabelo", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000086"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Desinfetante 500ml", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000087"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Desinfetante 1L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000088"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Desinfetante 2L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000089"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Desinfetante 5L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000090"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Detergente 500ml", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000091"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Detergente 1L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000092"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Detergente 2L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000093"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Detergente 5L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000094"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Detergente Clorado", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000095"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Desodorante Rolom", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000096"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Desodorante Aerosol", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000097"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Desengordurante 500ml", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000098"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Desengordurante 5L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000099"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Diabo Verde", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000100"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Enxaguante bucal", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000101"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Escova de dente", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000102"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Escova de Roupa/chão", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000103"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Esfregão de aço", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000104"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Esponja", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000105"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Fraldas diversas", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000106"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Hidratante", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000107"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Lenço umidecido", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000108"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Limpa Piso", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000109"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Limpa vidro", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000110"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Lixa de unha", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000111"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Lustra móvel", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000112"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Luva de Borracha", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000113"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Luva de Procedimento P", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000114"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Luva de Procedimento M", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000115"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Luva de Procedimento G", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000116"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Multiuso", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000117"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Naftalina 500g", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000118"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Óleo de girassol", 0m, 0m, "Alimento" },
                    { new Guid("00000000-0000-0000-0000-000000000119"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Pá para lixo", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000120"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Pano de chão", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000121"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Papel higiênico", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000122"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Papel Toalha", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000123"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Prendedor pct 12 ", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000124"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Prestobarba", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000125"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Rodo", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000126"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabão em barra", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000127"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabão em pó 500g", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000128"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabão em pó 1kg", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000129"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabão em pó 2 Kg", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000130"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabão em pó 4kg", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000131"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabão em pó 10kg", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000132"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabão líquido 2L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000133"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabão Líquido Caseiro", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000134"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabonete barra", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000135"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabonete líq 250 ml", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000136"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabonete líq 500 ml", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000137"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabonete líq 1L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000138"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Sabonete líquido 2L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000139"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Saco de lixo 100l", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000140"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Saco lixo branco 50L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000141"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Saco lixo branco 100L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000142"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Saponaceo", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000143"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Shampoo diversos ", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000144"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Talco", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000145"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Vassoura", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000146"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Vanish 1L", 0m, 0m, "Higiene" },
                    { new Guid("00000000-0000-0000-0000-000000000147"), new DateTime(2021, 11, 8, 0, 0, 0, 0, DateTimeKind.Utc), null, "", false, null, "Vinagre 750ml", 0m, 0m, "Alimento" }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000001"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000002"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000003"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000004"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000005"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000006"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000007"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000008"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000009"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000010"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000011"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000012"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000013"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000014"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000015"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000016"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000017"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000018"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000019"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000020"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000021"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000022"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000023"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000024"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000025"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000026"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000027"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000028"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000029"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000030"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000031"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000032"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000033"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000034"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000035"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000036"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000037"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000038"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000039"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000040"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000041"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000042"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000043"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000044"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000045"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000046"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000047"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000048"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000049"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000050"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000051"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000052"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000053"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000054"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000055"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000056"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000057"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000058"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000059"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000060"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000061"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000062"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000063"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000064"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000065"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000066"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000067"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000068"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000069"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000070"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000071"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000072"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000073"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000074"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000075"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000076"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000077"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000078"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000079"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000080"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000081"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000082"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000083"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000084"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000085"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000086"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000087"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000088"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000089"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000090"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000091"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000092"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000093"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000094"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000095"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000096"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000097"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000098"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000099"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000100"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000101"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000102"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000103"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000104"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000105"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000106"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000107"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000108"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000109"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000110"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000111"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000112"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000113"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000114"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000115"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000116"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000117"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000118"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000119"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000120"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000121"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000122"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000123"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000124"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000125"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000126"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000127"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000128"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000129"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000130"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000131"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000132"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000133"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000134"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000135"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000136"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000137"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000138"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000139"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000140"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000141"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000142"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000143"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000144"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000145"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000146"));

            migrationBuilder.DeleteData(
                table: "Stocks",
                keyColumn: "Id",
                keyValue: new Guid("00000000-0000-0000-0000-000000000147"));
        }
    }
}
