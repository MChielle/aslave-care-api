using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using AslaveCare.Domain.Extensions;

namespace AslaveCare.Domain.Extensions
{
    public static class EnumExtensions
    {
        public static string GetDescription<T>(this T source)
        {
            FieldInfo fi = source.GetType().GetField(source.ToString());

            DescriptionAttribute[] attributes = (DescriptionAttribute[])fi.GetCustomAttributes(
                typeof(DescriptionAttribute), false);

            if (attributes != null && attributes.Length > 0) return attributes[0].Description;
            else return source.ToString();
        }

        public static Dictionary<int, string> EnumToDictionary<T>()
        {
            if (!typeof(T).IsEnum)
                throw new ArgumentException("Type must be an enum");
            return Enum.GetValues(typeof(T))
                .Cast<T>()
                .ToDictionary(t => (int)(object)t, t => t.ToString());
        }

        public static string EnumToString<T>()
        {
            var enumDictionary = EnumToDictionary<T>();

            var enumString = string.Empty;

            if (enumDictionary.Count > 0)
                enumDictionary.ToList().ForEach(x => enumString += $"{x.Key} - {x.Value}");

            return enumString;
        }

        public static List<EnumObject> EnumToObject<T>()
        {
            var list = EnumToDictionary<T>();

            return list.Select(x => new EnumObject() { Id = x.Key, Name = x.Value }).ToList();
        }

        public class EnumObject
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }
    }
}
