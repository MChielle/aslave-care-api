using FirebaseAdmin.Messaging;

namespace SlaveCare.Integration.Firebase.Interfaces
{
    public interface IFirebaseService
    {
        Task<bool> SendMessage(string fireBaseCloudMessageToken, Priority priority, string title, string message, Dictionary<string, string> data);
    }
}