using Amazon.S3;
using Amazon.S3.Model;
using AslaveCare.Domain.Enums;
using AslaveCare.Domain.Extensions;
using AslaveCare.Domain.Helpers;
using AslaveCare.Integration.Amazon.S3.Configurations;
using AslaveCare.Integration.Amazon.S3.Interfaces;
using AslaveCare.Integration.Amazon.S3.Model;
using System.Text.RegularExpressions;

namespace AslaveCare.Integration.Amazon.S3.Services
{
    public class S3FileService : IS3FileService
    {
        private readonly IAmazonS3 _client;
        private readonly S3Configuration _s3Configuration;

        public S3FileService(S3Configuration s3Configuration)
        {
            _s3Configuration = s3Configuration;
            _client = new AmazonS3Client(_s3Configuration.AccessKeyId, _s3Configuration.AccessSecretKey, _s3Configuration.RegionEndpoint);
        }

        #region Public

        public async Task<S3FileUploadResponseModel> UploadImageToS3(string fileName, string fileBase64String, ImageFileType imageFileType)
        {
            return await CreateAndUploadFile(fileName, fileBase64String, FileType.Image, imageFileType);
        }

        public async Task DeleteImageFromS3(string fileName, ImageFileType imageFileType)
        {
            fileName = Path.GetFileName(fileName);
            await DeleteFile(fileName, FileType.Image, imageFileType);
        }

        #endregion Public

        #region Private

        private async Task<ListObjectsResponse> GetFilesFromFolder(string folderPath)
        {
            return await _client.ListObjectsAsync(_s3Configuration.BucketName, folderPath);
        }

        private async Task<S3FileUploadResponseModel> CreateAndUploadFile(string fileName, string fileBase64String, FileType s3FileType, ImageFileType imageFileType)
        {
            var fileBytes = GetFileBytes(fileBase64String);

            var fullFileName = GetFileNameAndExtensionFromBase64FileString(fileName, fileBase64String);

            CreateLocalFile(fullFileName, fileBytes);

            var s3FolderPath = GetBucketFilePath(s3FileType, imageFileType);

            return await UploadFile(fullFileName, s3FolderPath);
        }

        private static void CreateLocalFile(string fileName, byte[] fileBytes)
        {
            File.WriteAllBytes(fileName, fileBytes);
        }

        private static string GetFileNameAndExtensionFromBase64FileString(string fileName, string fileBytesString)
        {
            Regex regex = new Regex("(?<=:)(.*?)(?=;)");
            var fileTypeAndExtension = regex.Match(fileBytesString).ToString().Split('/');
            return $"{fileName}.{fileTypeAndExtension?[1]}";
        }

        private static byte[] GetFileBytes(string fileBytesString)
        {
            var regex = new Regex(@"^[\w/\:.-]+;base64,");
            fileBytesString = regex.Replace(fileBytesString, string.Empty);
            return Convert.FromBase64String(fileBytesString);
        }

        private async Task<S3FileUploadResponseModel> UploadFile(string fileName, string s3FolderPath)
        {
            var uploadResponse = new S3FileUploadResponseModel();
            var fullPath = string.Concat(s3FolderPath, "/", fileName);

            try
            {
                var request = new PutObjectRequest
                {
                    BucketName = GetBucketEnvironmentName(),
                    Key = fullPath,
                    FilePath = fileName,
                    CannedACL = S3CannedACL.PublicRead,
                };

                var response = await _client.PutObjectAsync(request);

                uploadResponse.HttpStatusCode = response.HttpStatusCode;
                if (response.HttpStatusCode == System.Net.HttpStatusCode.OK)
                {
                    uploadResponse.Message = response.ETag;
                    uploadResponse.S3FileUrl = GetUploadedFileFullPath(fullPath);
                }
                //else
                //    _Logger.LogInformation("Ocorreu um erro ao processar o upload da imagem");

                return uploadResponse;
            }
            catch (Exception e)
            {
                //_Logger.LogInformation(e.Message);
                uploadResponse.Message = e.Message;
                return uploadResponse;
            }
            finally
            {
                File.Delete($"./{fileName}");
            }
        }

        private string GetUploadedFileFullPath(string fullPath)
        {
            return string.Concat($"https://{GetEnvironmentFromRule()}-utizie-files.s3.{_s3Configuration.RegionEndpoint.SystemName}.amazonaws.com", "/", fullPath);
        }

        private string GetBucketEnvironmentName()
        {
            return string.Concat(GetEnvironmentFromRule(), "-", _s3Configuration.BucketName);
        }

        private string GetEnvironmentFromRule()
        {
            switch (EnvironmentHelper.Environment)
            {
                case EnvironmentType.Production:
                case EnvironmentType.Homologation:
                    return EnvironmentHelper.Environment.GetDescription().ToLower();

                default:
                    return EnvironmentType.Development.GetDescription().ToLower();
            }
        }

        private string GetBucketFilePath(FileType s3FileType, ImageFileType imageFileType)
        {
            switch (s3FileType)
            {
                case FileType.Image:
                    switch (imageFileType)
                    {
                        case ImageFileType.Logo:
                            return string.Concat(_s3Configuration.BucketImageName, "/", _s3Configuration.BucketImageLogoName);

                        case ImageFileType.Photo:
                            return string.Concat(_s3Configuration.BucketImageName, "/", _s3Configuration.BucketImagePhotoName);

                        case ImageFileType.Gallery:
                            return string.Concat(_s3Configuration.BucketImageName, "/", _s3Configuration.BucketImageGalleryName);

                        default:
                            throw new NotImplementedException();
                    }
                default:
                    return string.Empty;
            }
        }

        private async Task DeleteFile(string fileName, FileType s3FileType, ImageFileType imageFileType)
        {
            var s3FolderPath = GetBucketFilePath(s3FileType, imageFileType);

            await _client.DeleteAsync(GetBucketEnvironmentName(), string.Concat(s3FolderPath, "/", fileName), null);
        }

        #endregion Private
    }
}