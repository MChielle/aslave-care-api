using AslaveCare.Domain.Constants;
using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Entities.Enums;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Interfaces.Services.v1;
using AslaveCare.Domain.Interfaces.Services.v1.Authentication;
using AslaveCare.Domain.Models.v1.Employee;
using AslaveCare.Domain.Models.v1.SignIn;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Responses;
using AslaveCare.Domain.Responses.Interfaces;
using AslaveCare.Domain.Responses.Messages;
using AslaveCare.Service.ServiceContext;
using AslaveCare.Service.Services.Base;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Service.Services.v1
{
    public class EmployeeService : ServiceBase<EmployeeAddModel, EmployeeUpdateModel, EmployeePatchModel, EmployeeGetModel, EmployeeModel, Employee, Guid>, IEmployeeService
    {
        private readonly IEmployeeRepository _repository;
        private readonly ISignUpService _signUpService;
        private readonly IUserService _userService;
        private readonly IJwtService _jwtService;

        public EmployeeService(IEmployeeRepository repository, IServiceContext serviceContext, ISignUpService signUpService, IUserService userService, IJwtService jwtService)
            : base(repository, serviceContext)
        {
            _repository = repository;
            _signUpService = signUpService;
            _userService = userService;
            _jwtService = jwtService;
        }

        public override async Task<IResponseBase> AddAsync(EmployeeAddModel model)
        {
            var response = await _signUpService.SignUpGenericAsync(model.SignUp, UserType.Employee);
            if (!response.IsSuccess) return response;
            var user = ((OkResponse<UserModel>)response).Data;
            model.UserId = user.Id;
            var employee = await _repository.AddAsync(Mapper.Map<Employee>(model));
            if (employee == null) return new BadRequestResponse(ConstantMessages.CRUD_CREATE_FAIL, response);
            //if (!string.IsNullOrEmpty(model.PhotoBase64String))
            //{
            //var uploadResponse = await _s3FileService.UploadImageToS3(employee.Id.ToString(), model.PhotoBase64String, ImageFileType.Photo);
            //employee.PhotoPath = uploadResponse.S3FileUrl;
            //    employee = await _repository.UpdateAsync(employee);
            //}
            return new OkResponse<EmployeeGetModel>(Mapper.Map<EmployeeGetModel>(employee));
        }

        public override async Task<IResponseBase> UpdateAsync(EmployeeUpdateModel model)
        {
            var employee = await _repository.GetByIdAsync(model.Id);
            if (employee == null) return new NoContentResponse();
            var employeeUpdated = Mapper.Map<Employee>(model);
            //if (!string.IsNullOrEmpty(model.PhotoBase64String))
            //{
            //    var uploadResponse = await _s3FileService.UploadImageToS3(model.Id.ToString(), model.PhotoBase64String, ImageFileType.Photo);
            //    employeeUpdated.PhotoPath = uploadResponse.S3FileUrl;
            //}
            //employeeUpdated.PhotoPath = employee.PhotoPath;
            employee = await _repository.UpdateAsync(employeeUpdated);
            return new OkResponse<EmployeeGetModel>(Mapper.Map<EmployeeGetModel>(employee));
        }

        public async Task<IResponseBase> SoftDeleteById(Guid id)
        {
            var entity = await _repository.GetByIdAsync(id);
            if (entity == null) return new NoContentResponse();
            //if (entity.PhotoPath != null) await _s3FileService.DeleteImageFromS3(entity.PhotoPath, ImageFileType.Photo);
            entity = RemoveUserSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            await _userService.SoftDeleteById(entity.UserId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        public async Task<IResponseBase> SoftDeleteByUserId(Guid userId)
        {
            var entity = await _repository.GetByUserIdAsync(userId);
            if (entity == null) return new NoContentResponse();
            //if (entity.PhotoPath != null) await _s3FileService.DeleteImageFromS3(entity.PhotoPath, ImageFileType.Photo);
            entity = RemoveUserSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            await _userService.SoftDeleteById(entity.UserId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        private Employee RemoveUserSensitiveData(Employee entity)
        {
            entity.PhotoPath = null;
            entity.DeletionDate = DateTime.UtcNow;
            return entity;
        }

        public async Task<IResponseBase> GetByTokenAsync(string jwtToken, CancellationToken cancellationToken)
        {
            var userId = _jwtService.GetUserIdFromToken(jwtToken);
            var employee = await _repository.GetByUserIdAsync(userId, cancellationToken);
            if (employee == null) return new NoContentResponse();
            return new OkResponse<EmployeeGetWithoutSensitiveDataModel>(Mapper.Map<EmployeeGetWithoutSensitiveDataModel>(employee));
        }

        public override async Task<IResponseBase> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            var employee = await _repository.GetCompleteByIdAsync(id, cancellationToken);
            if (employee == null) return new NoContentResponse();
            return new OkResponse<EmployeeModel>(Mapper.Map<EmployeeModel>(employee));
        }

        public async Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellationToken)
        {
            var employee = await _repository.GetByIdToUpdateAsync(id, cancellationToken);
            if (employee == null) return new NoContentResponse();
            return new OkResponse<GenericUserProfileGetWithoutSensitiveDataModel>(Mapper.Map<GenericUserProfileGetWithoutSensitiveDataModel>(employee));
        }

        public async Task<IResponseBase> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken)
        {
            var employee = await _repository.GetByUserIdAsync(userId, cancellationToken);
            if(employee == null) return new NoContentResponse();
            return new OkResponse<GenericUserProfileGetWithoutSensitiveDataModel>(Mapper.Map<GenericUserProfileGetWithoutSensitiveDataModel>(employee));
        }

        public async Task<IResponseBase> GetAnyToListAsync(CancellationToken cancellationToken)
        {
            var employees = await _repository.GetAnyToListAsync(cancellationToken);
            if (employees == null) return new NoContentResponse();
            return new OkResponse<IEnumerable<GenericUserProfileGetWithoutSensitiveDataModel>>(Mapper.Map<IEnumerable<GenericUserProfileGetWithoutSensitiveDataModel>>(employees));
        }
    }
}