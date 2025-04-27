using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Enums;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Interfaces.Services.v1.Authentication;
using SlaveCare.Domain.Models.v1.Manager;
using SlaveCare.Domain.Models.v1.User;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses.Messages;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;
using System.Threading.Tasks;

namespace SlaveCare.Service.Services.v1
{
    public class ManagerService : ServiceBase<ManagerAddModel, ManagerUpdateModel, ManagerPatchModel, ManagerGetModel, ManagerModel, Manager, Guid>, IManagerService
    {
        private readonly IManagerRepository _repository;

        private readonly ISignUpService _signUpService;
        private readonly IUserService _userService;

        public ManagerService(IManagerRepository repository, IServiceContext serviceContext, ISignUpService signUpService, IUserService userService)
            : base(repository, serviceContext)
        {
            _repository = repository;
            _signUpService = signUpService;
            _userService = userService;
        }

        public override async Task<IResponseBase> AddAsync(ManagerAddModel model)
        {
            var response = await _signUpService.SignUpEmailAsync(model.SignUp, UserType.Manager);
            if (!response.IsSuccess) return response;
            var user = ((OkResponse<UserModel>)response).Data;
            model.UserId = user.Id;
            var Manager = await _repository.AddAsync(Mapper.Map<Manager>(model));
            if (Manager == null) return new BadRequestResponse(ConstantMessages.CRUD_CREATE_FAIL, response);
            //if (!string.IsNullOrEmpty(model.PhotoBase64String))
            //{
            //    var uploadResponse = await _s3FileService.UploadImageToS3(Manager.Id.ToString(), model.PhotoBase64String, ImageFileType.Photo);
            //    Manager.PhotoPath = uploadResponse.S3FileUrl;
            //    Manager = await _repository.UpdateAsync(Manager);
            //}
            return new OkResponse<ManagerGetModel>(Mapper.Map<ManagerGetModel>(Manager));
        }

        public override async Task<IResponseBase> UpdateAsync(ManagerUpdateModel model)
        {
            var manager = await _repository.GetByIdAsync(model.Id);
            if (manager == null) return new NoContentResponse();
            var managerUpdated = Mapper.Map<Manager>(model);
            //if (!string.IsNullOrEmpty(model.PhotoBase64String))
            //{
            //    var uploadResponse = await _s3FileService.UploadImageToS3(model.Id.ToString(), model.PhotoBase64String, ImageFileType.Photo);
            //    managerUpdated.PhotoPath = uploadResponse.S3FileUrl;
            //}
            //managerUpdated.PhotoPath = manager.PhotoPath;
            manager = await _repository.UpdateAsync(managerUpdated);
            return new OkResponse<ManagerUpdateModel>(Mapper.Map<ManagerUpdateModel>(manager));
        }

        public async Task<IResponseBase> SoftDeleteById(Guid id)
        {
            var entity = await _repository.GetByIdAsync(id);
            if (entity == null) return new NoContentResponse();
            //if (entity.PhotoPath != null) await _s3FileService.DeleteImageFromS3(entity.PhotoPath, ImageFileType.Photo);
            entity = RemoveManagerSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            await _userService.SoftDeleteById(entity.UserId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        public async Task<IResponseBase> SoftDeleteByUserId(Guid userId)
        {
            var entity = await _repository.GetByUserIdAsync(userId);
            if (entity == null) return new NoContentResponse();
            //if (entity.PhotoPath != null) await _s3FileService.DeleteImageFromS3(entity.PhotoPath, ImageFileType.Photo);
            entity = RemoveManagerSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            await _userService.SoftDeleteById(entity.UserId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        private Manager RemoveManagerSensitiveData(Manager entity)
        {
            entity.Name = "DELETED";
            entity.Disable = true;
            entity.PhotoPath = null;
            entity.DeletionDate = DateTime.UtcNow;
            return entity;
        }
    }
}