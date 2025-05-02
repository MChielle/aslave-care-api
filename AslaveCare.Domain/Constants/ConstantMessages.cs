namespace AslaveCare.Domain.Constants
{
    public static class ConstantMessages
    {
        #region Formats

        public const string Date = "dd/MM/yyyy";
        public const string ShortTime = @"hh\:mm";

        #endregion Formats

        #region General

        public static string APPLICATION_NAME => System.Environment.GetEnvironmentVariable("APPLICATION_NAME");

        public static readonly string INVALID_S3_BUCKET_CONFIGURATION = "Erro na configuração Bucket S3: AccessKeyId {0}, AccessSecretKey {1}, BucketName {2}, BucketImageName {3}, BucketImageLogoName {4} e BucketImageGalleryName {5}";

        #endregion General

        #region CRUD

        public static readonly string CRUD_DELETED = "Registro deletado.";
        public static readonly string CRUD_CONFLICT = "Registro gerou conflito.";
        public static readonly string CRUD_CREATE_FAIL = "Registro não foi inserido.";
        public static readonly string CRUD_UPDATE_FAIL = "Registro não foi atualizado.";
        public static readonly string CRUD_EMAIL_CONFLICT = "Este email pertence a outro cadastro.";
        public static readonly string CRUD_PHONE_CONFLICT = "Este número de telefone pertence a outro cadastro.";
        public static readonly string CRUD_INVALID_PARAMETER = "Requisição inválida (parâmetros incorretos).";
        public static readonly string CRUD_USER_HAS_NO_VALIDATION = "Usuário inválido.";

        #endregion CRUD

        #region Message

        public static string SMS_CONFIRMATION_CODE => $"Seu código {APPLICATION_NAME} de confirmação é: #.";
        public static string EMAIL_CONFIRMATION_CODE => $"Seu código {APPLICATION_NAME} de confirmação é: #.";
        public static string CONFIRMATION_CODE_IS_VALID => $"Seu código {APPLICATION_NAME} de confirmação foi validado.";

        public static string MESSAGE_SMS_CONFIRMATION_CODE => "Olá, bem-vindo(a) ao nosso app!" +
                                              "\nPara confirmar o teu número de telefone, insira o código {0} no app." +
                                              $"\nAté mais, {APPLICATION_NAME}.";

        #endregion Message

        #region Email Subjects

        public static string EMAIL_SUBJECT_VALIDATION_CODE_NOTIFICATION => $"Código ativação da conta - {APPLICATION_NAME}.";
        public static string EMAIL_SUBJECT_CONFIRM_VALIDATION_CODE_NOTIFICATION => $"Conta ativada - {APPLICATION_NAME}.";
        public static string EMAIL_SUBJECT_RESET_PASSWORD_VALIDATION_CODE_NOTIFICATION => $"Esqueceu a senha? - {APPLICATION_NAME}.";

        #endregion Email Subjects
    }
}
