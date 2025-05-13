using System;
using System.Linq;

namespace AslaveCare.Domain.Extensions
{
    public static class FluentValidationMessageExtensions
    {
        public static string MessageForNullProperty(this string propertyName)
        {
            return $"O parâmetro '{propertyName}' não pode ser nulo.";
        }

        public static string MessageForEmptyProperty(this string propertyName)
        {
            return $"O parâmetro '{propertyName}' não pode ser vazio.";
        }

        public static string MessageForShouldGreaterThan(this string propertyName, int valueToCompare)
        {
            return $"O parâmetro '{propertyName}' deve ser maior que {valueToCompare}";
        }

        public static string MessageForEqual(this string propertyName, object valueToCompare)
        {
            return $"O parâmetro '{propertyName}' deve ser igual a '{valueToCompare}'";
        }

        public static string MessageForShouldLowerThan(this string propertyName, object valueToCompare)
        {
            return $"O parâmetro '{propertyName}' deve ser menor que {valueToCompare}";
        }

        public static string MessageForNumericOnly(this string propertyName)
        {
            return $"O parâmetro '{propertyName}' deve conter apenas números";
        }

        public static string MessageForFixedSize(this string propertyName, string ruleMessage, bool onlyNumber = false)
        {
            return $"O parâmetro '{propertyName}' deve conter {ruleMessage} {(onlyNumber ? "dígitos" : "caractéres")}";
        }

        public static string MessageForInvalidValue(this string propertyName)
        {
            return $"O parâmetro '{propertyName}' contém um valor inválido";
        }

        public static string MessageForMustBePresentInEnum<T>(this string propertyName)
            where T : Enum
        {
            var enumDictionary = Enum.GetValues(typeof(T))
                .Cast<T>()
                .ToDictionary(t => (int)(object)t, t => t.ToString());

            var enumString = string.Empty;

            enumDictionary.ToList().ForEach(x => enumString += $"{x.Key}-{x.Value} ");

            return $"O parâmetro '{propertyName}' deve ser um dos seguintes valores '{enumString}'";
        }

        public static string MessageForOneMustHaveValue(this string[] propertiesName)
        {
            return $"Um dos parâmetros '{string.Join(", ", propertiesName)}' deve conter um valor válido";
        }
    }
}