using System.Net;

namespace AslaveCare.Integration.Amazon.S3.Model
{
    public class S3FileUploadResponseModel
    {
        public string Message { get; set; }

        public HttpStatusCode HttpStatusCode { get; set; }

        public string S3FileUrl { get; set; }
    }
}