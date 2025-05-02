using FirebaseAdmin.Messaging;
using AslaveCare.Integration.Firebase.Interfaces;

namespace AslaveCare.Integration.Firebase.Services
{
    public class FirebaseService : IFirebaseService
    {
        public async Task<bool> SendMessage(string fireBaseCloudMessageToken, Priority priority, string title, string message, Dictionary<string, string> data)
        {
            try
            {
                data.Add("click_action", "FLUTTER_NOTIFICATION_CLICK");

                var response = await FirebaseMessaging.DefaultInstance.SendAsync(new Message
                {
                    Token = fireBaseCloudMessageToken,
                    Android = new AndroidConfig
                    {
                        Priority = priority,
                        TimeToLive = TimeSpan.FromHours(1)
                    },
                    Apns = new ApnsConfig
                    {
                        Aps = new Aps
                        {
                            Badge = 1,
                            Sound = "default"
                        },
                        Headers = new Dictionary<string, string>
                    {
                        { "apns-expiration", "3600" }, //1 hora em segundos
                        { "apns-priority", "10" },
                    }
                    },
                    Data = data,
                    Notification = new Notification
                    {
                        Title = title,
                        Body = message
                    }
                });
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
