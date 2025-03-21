using Org.BouncyCastle.Crypto;
using Org.BouncyCastle.Crypto.Parameters;
using Org.BouncyCastle.OpenSsl;
using Org.BouncyCastle.Security;
using SlaveCare.Domain.Exceptions;
using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace SlaveCare.Domain.Helpers
{
    public static class RSACipherHelper
    {
        private static string PRIVATE_PEM_CONTENT = System.Environment.GetEnvironmentVariable("PRIVATE_PEM_CONTENT");

        private static RSAParameters privateKey;
        private static RSAParameters publicKey;

        static RSACipherHelper()
        {
            ImportKeys();
        }

        public static string EncryptString(string data)
        {
            if (string.IsNullOrEmpty(data))
                throw new DefaultException("Invalid parameter data");

            var encrypted = Encrypt(data);

            return Convert.ToBase64String(encrypted);
        }

        public static bool ValidateEncryptedData(string plainData, string encryptedData)
        {
            var decripted = Decrypt(Convert.FromBase64String(encryptedData));

            return decripted.Equals(plainData);
        }

        private static string DecryptString(string data)
        {
            if (string.IsNullOrEmpty(data))
                throw new DefaultException("Invalid parameter data");

            var decripted = Decrypt(Convert.FromBase64String(data));

            return decripted;
        }

        private static void ImportKeys()
        {
            try
            {
                if (string.IsNullOrEmpty(PRIVATE_PEM_CONTENT))
                    throw new DefaultException("Undefined PRIVATE_PEM_CONTENT");

                using (var textReader = new StringReader(PRIVATE_PEM_CONTENT))
                {
                    var pemReader = new PemReader(textReader);
                    var pemObject = (AsymmetricCipherKeyPair)pemReader.ReadObject();

                    privateKey = DotNetUtilities.ToRSAParameters((RsaPrivateCrtKeyParameters)pemObject.Private);
                    publicKey = DotNetUtilities.ToRSAParameters((RsaKeyParameters)pemObject.Public);
                }
            }
            catch (Exception ex)
            {
                throw new DefaultException("Import key", ex);
            }
        }

        private static byte[] Encrypt(string data)
        {
            byte[] encodedData = null;
            var dataBytes = Encoding.UTF8.GetBytes(data);

            using (var rsa = new RSACryptoServiceProvider())
            {
                rsa.ImportParameters(publicKey);

                encodedData = rsa.Encrypt(dataBytes, false);
            }

            return encodedData;
        }

        private static string Decrypt(byte[] data)
        {
            byte[] decodedData = null;

            using (var rsa = new RSACryptoServiceProvider())
            {
                rsa.ImportParameters(privateKey);

                decodedData = rsa.Decrypt(data, false);
            }

            return Encoding.UTF8.GetString(decodedData);
        }
    }
}