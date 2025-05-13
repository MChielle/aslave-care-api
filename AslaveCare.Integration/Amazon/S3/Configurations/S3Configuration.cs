using Amazon;

namespace AslaveCare.Integration.Amazon.S3.Configurations
{
    public class S3Configuration
    {
        internal string AccessKeyId { get; private set; }
        internal string AccessSecretKey { get; private set; }
        internal string BucketName { get; private set; }
        internal string BucketImageName { get; private set; }
        internal string BucketImageLogoName { get; private set; }
        internal string BucketImagePhotoName { get; private set; }
        internal string BucketImageGalleryName { get; private set; }
        internal RegionEndpoint RegionEndpoint { get; private set; }

        public S3Configuration(string accessKeyId, string accessSecretKey, string bucketName, string bucketImageName, string bucketImageLogoName, string bucketImagePhotoName, string bucketImageGalleryName, string regionEndpoint)
        {
            AccessKeyId = accessKeyId;
            AccessSecretKey = accessSecretKey;
            BucketName = bucketName;
            BucketImageName = bucketImageName;
            BucketImageLogoName = bucketImageLogoName;
            BucketImagePhotoName = bucketImagePhotoName;
            BucketImageGalleryName = bucketImageGalleryName;
            RegionEndpoint = RegionEndpoint.GetBySystemName(regionEndpoint);
        }
    }
}