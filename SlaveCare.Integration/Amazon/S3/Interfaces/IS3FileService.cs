using SlaveCare.Domain.Enums;
using SlaveCare.Integration.Amazon.S3.Model;

namespace SlaveCare.Integration.Amazon.S3.Interfaces
{
    public interface IS3FileService
    {
        Task DeleteImageFromS3(string fileName, ImageFileType imageFileType);

        Task<S3FileUploadResponseModel> UploadImageToS3(string fileName, string fileBase64String, ImageFileType imageFileType);

        //IResponseBase ValidateS3EnvironmentConfiguration();
    }
}