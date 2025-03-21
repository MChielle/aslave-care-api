using Newtonsoft.Json;
using SlaveCare.Integration.Whatsapp.Interfaces;
using System.Net;
using System.Text;

namespace SlaveCare.Integration.Whatsapp.Services
{
    public class WhatsappService : IWhatsappService
    {
        private readonly string _urlBase;
        private readonly string _instanceId;
        private readonly string _clientId;
        private readonly string _clientSecret;

        public WhatsappService(string urlBase, string clientId, string clientSecret, string instanceId)
        {
            _urlBase = urlBase;
            _clientId = clientId;
            _clientSecret = clientSecret;
            _instanceId = instanceId;
        }

        public bool sendMessage(string number, string message)
        {
            var url = _urlBase + _instanceId;
            bool success = true;

            try
            {
                using (WebClient client = new WebClient())
                {
                    client.Headers[HttpRequestHeader.ContentType] = "application/json";
                    client.Headers["X-WM-CLIENT-ID"] = _clientId;
                    client.Headers["X-WM-CLIENT-SECRET"] = _clientSecret;

                    Payload payloadObj = new Payload() { number = number, message = message };
                    string postData = JsonConvert.SerializeObject(payloadObj);

                    client.Encoding = Encoding.UTF8;
                    string response = client.UploadString(url, postData);
                    Console.WriteLine(response);
                }
            }
            catch (WebException webEx)
            {
                Console.WriteLine(((HttpWebResponse)webEx.Response).StatusCode);
                Stream stream = ((HttpWebResponse)webEx.Response).GetResponseStream();
                StreamReader reader = new StreamReader(stream);
                String body = reader.ReadToEnd();
                Console.WriteLine(body);
                success = false;
            }

            return success;
        }

        public class Payload
        {
            public string number { get; set; }
            public string message { get; set; }
        }
    }
}