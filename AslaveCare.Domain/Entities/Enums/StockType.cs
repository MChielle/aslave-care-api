using System.ComponentModel;

namespace AslaveCare.Domain.Entities.Enums
{
    public enum StockType
    {
        [Description("Alimento")]
        Food,

        [Description("Higiene")]
        Hygiene,

        [Description("Limpeza")]
        Cleaning,

        [Description("Medicamento")]
        Medicine
    }
}