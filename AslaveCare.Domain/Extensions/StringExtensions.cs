using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using AslaveCare.Domain.Extensions;

namespace AslaveCare.Domain.Extensions
{
    public static class StringExtensions
    {
        public static bool ContainsAny(this string input, IEnumerable<string> searchInput) =>
            input switch
            {
                null => false,
                "" => false,
                _ => searchInput.Any(input.Contains)
            };

        //TODO: TESTAR (SHA256.CREATE)
        public static string ToHashSha256(this string input) =>
            input switch
            {
                null => string.Empty,
                "" => string.Empty,
                _ => BitConverter.ToString((SHA256.Create()).ComputeHash(Encoding.UTF8.GetBytes(input))).Replace("-", "")
                //_ => BitConverter.ToString((new SHA256Managed()).ComputeHash(Encoding.UTF8.GetBytes(input))).Replace("-", "") - obsolete
            };

        public static string FirstCharToUpper(this string input) =>
            input switch
            {
                null => string.Empty,
                "" => string.Empty,
                _ => input.First().ToString().ToUpper() + input.Substring(1)
            };

        public static bool AllCharacterAreEquals(this string input)
        {
            if (string.IsNullOrEmpty(input)) return false;

            bool isEquals = true;

            string lastCharacter = input[0].ToString();

            for (int i = 1; i < input.Length; i++)
            {
                if (!input[i].ToString().Equals(lastCharacter))
                {
                    isEquals = false;
                }
            }
            return isEquals;
        }

        public static string GetNumbers(this string input)
        {
            return Regex.Replace(input, @"[^\d]", "", RegexOptions.None);
        }

        public static string EncodeBase64(this string input)
        {
            var valueBytes = Encoding.UTF8.GetBytes(input);
            return Convert.ToBase64String(valueBytes);
        }

        public static string DecodeBase64(this string input)
        {
            var decrypted = ToBase64(input);
            var valueBytes = Convert.FromBase64String(decrypted);
            return Encoding.UTF8.GetString(valueBytes);
        }

        private static string ToBase64(this string input)
        {
            if (input == null) throw new ApplicationException("Convert base64 string cannot be null");

            var value = input
                .PadRight(input.Length + (4 - input.Length % 4) % 4, '=')
                .Replace("_", "/")
                .Replace("-", "+");

            return value;
        }

        public static string ReplaceSpecialCharacters(this string input)
        {
            string[] special = new string[] { "ç", "Ç", "á", "é", "í", "ó", "ú", "ý", "Á", "É", "Í", "Ó", "Ú", "Ý", "à", "è", "ì", "ò", "ù", "À", "È", "Ì", "Ò", "Ù", "ã", "õ", "ñ", "ä", "ë", "ï", "ö", "ü", "ÿ", "Ä", "Ë", "Ï", "Ö", "Ü", "Ã", "Õ", "Ñ", "â", "ê", "î", "ô", "û", "Â", "Ê", "Î", "Ô", "Û" };
            string[] regular = new string[] { "c", "C", "a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "Y", "a", "e", "i", "o", "u", "A", "E", "I", "O", "U", "a", "o", "n", "a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "A", "O", "N", "a", "e", "i", "o", "u", "A", "E", "I", "O", "U" };

            for (int i = 0; i < special.Length; i++)
            {
                input = input.Replace(special[i], regular[i]);
            }
            string[] simbols = { "¹", "²", "³", "£", "¢", "¬", "º", "¨", "\"", "'", ".", ",", "-", ":", "(", ")", "ª", "|", "\\\\", "°", "_", "@", "#", "!", "$", "%", "&", "*", ";", "/", "<", ">", "?", "[", "]", "{", "}", "=", "+", "§", "´", "`", "^", "~" };

            for (int i = 0; i < simbols.Length; i++)
            {
                input = input.Replace(simbols[i], "");
            }
            return input.Trim();
        }

        public static string Fill(this string input, char fill, int lenght, bool right = false)
        {
            if (input.Length >= lenght) return input;
            while (input.Length < lenght)
                if (right)
                    input = $"{fill}{input}";
                else
                    input = $"{input}{fill}";
            return input;
        }
    }
}
