using SlaveCare.Domain.Constants;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Entities.Enums;
using SlaveCare.Domain.Enums;
using SlaveCare.Domain.Interfaces.Repositories.v1;
using SlaveCare.Domain.Interfaces.Services.v1;
using SlaveCare.Domain.Interfaces.Services.v1.Authentication;
using SlaveCare.Domain.Models.v1.Employee;
using SlaveCare.Domain.Models.v1.User;
using SlaveCare.Domain.Responses;
using SlaveCare.Domain.Responses.Interfaces;
using SlaveCare.Domain.Responses.Messages;
using SlaveCare.Integration.Amazon.S3.Interfaces;
using SlaveCare.Service.ServiceContext;
using SlaveCare.Service.Services.Base;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Service.Services.v1
{
    public class EmployeeService : ServiceBase<EmployeeAddModel, EmployeeUpdateModel, EmployeePatchModel, EmployeeGetModel, EmployeeModel, Employee, Guid>, IEmployeeService
    {
        private readonly IEmployeeRepository _repository;
        private readonly IS3FileService _s3FileService;
        private readonly ISignUpService _signUpService;
        private readonly IUserService _userService;
        private readonly IJwtService _jwtService;

        public EmployeeService(IEmployeeRepository employeeRepository, IServiceContext serviceContext, IS3FileService s3FileService, ISignUpService signUpService, IUserService userService, IJwtService jwtService)
            : base(employeeRepository, serviceContext)
        {
            _repository = employeeRepository;
            _s3FileService = s3FileService;
            _signUpService = signUpService;
            _userService = userService;
            _jwtService = jwtService;
        }

        public override async Task<IResponseBase> AddAsync(EmployeeAddModel model)
        {
            var response = await _signUpService.SignUpEmailAsync(model.SignUp, UserType.Employee);
            if (!response.IsSuccess) return response;
            var user = ((OkResponse<UserModel>)response).Data;
            model.UserId = user.Id;
            var employee = await _repository.AddAsync(Mapper.Map<Employee>(model));
            if (employee == null) return new BadRequestResponse(ConstantMessages.CRUD_CREATE_FAIL, response);
            if (!string.IsNullOrEmpty(model.PhotoBase64String))
            {
                var uploadResponse = await _s3FileService.UploadImageToS3(employee.Id.ToString(), model.PhotoBase64String, ImageFileType.Photo);
                employee.PhotoPath = uploadResponse.S3FileUrl;
                employee = await _repository.UpdateAsync(employee);
            }
            return new OkResponse<EmployeeGetModel>(Mapper.Map<EmployeeGetModel>(employee));
        }

        public override async Task<IResponseBase> UpdateAsync(EmployeeUpdateModel model)
        {
            var employee = await _repository.GetByIdAsync(model.Id);
            if (employee == null) return new NoContentResponse();
            var employeeUpdated = Mapper.Map<Employee>(model);
            if (!string.IsNullOrEmpty(model.PhotoBase64String))
            {
                var uploadResponse = await _s3FileService.UploadImageToS3(model.Id.ToString(), model.PhotoBase64String, ImageFileType.Photo);
                employeeUpdated.PhotoPath = uploadResponse.S3FileUrl;
            }
            else
            {
                employeeUpdated.PhotoPath = employee.PhotoPath;
            }
            employee = await _repository.UpdateAsync(employeeUpdated);
            return new OkResponse<EmployeeGetModel>(Mapper.Map<EmployeeGetModel>(employee));
        }

        public async Task<IResponseBase> SoftDeleteById(Guid id)
        {
            var entity = await _repository.GetByIdAsync(id);
            if (entity == null) return new NoContentResponse();
            if (entity.PhotoPath != null) await _s3FileService.DeleteImageFromS3(entity.PhotoPath, ImageFileType.Photo);
            entity = RemoveUserSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            await _userService.SoftDeleteById(entity.UserId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        public async Task<IResponseBase> SoftDeleteByUserId(Guid userId)
        {
            var entity = await _repository.GetByUserIdAsync(userId);
            if (entity == null) return new NoContentResponse();
            if (entity.PhotoPath != null) await _s3FileService.DeleteImageFromS3(entity.PhotoPath, ImageFileType.Photo);
            entity = RemoveUserSensitiveData(entity);
            await _repository.UpdateAsync(entity);
            await _userService.SoftDeleteById(entity.UserId);
            return new OkResponse<DefaultMessageResponse>(new DefaultMessageResponse(ConstantMessages.CRUD_DELETED, null));
        }

        private Employee RemoveUserSensitiveData(Employee entity)
        {
            entity.Name = "DELETED";
            entity.PhotoPath = null;
            entity.Disable = true;
            entity.SplitPercentage = 0;
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
    }
}