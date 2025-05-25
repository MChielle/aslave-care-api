using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Helpers;
using AslaveCare.Domain.Models.v1.Employee;
using AslaveCare.Domain.Models.v1.Manager;
using AslaveCare.Domain.Models.v1.RegisterIn;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using AslaveCare.Domain.Models.v1.RegisterOut;
using AslaveCare.Domain.Models.v1.RegisterOutStock;
using AslaveCare.Domain.Models.v1.Role;
using AslaveCare.Domain.Models.v1.SignIn;
using AslaveCare.Domain.Models.v1.Stock;
using AslaveCare.Domain.Models.v1.StockType;
using AslaveCare.Domain.Models.v1.Supplier;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Models.v1.UserRole;
using AslaveCare.Domain.Models.v1.UserValidation;
using AutoMapper;
using System.Text;

namespace AslaveCare.Service.Mappings
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            UserMappings();
            RoleMappings();
            ManagerMappings();
            EmployeeMappings();
            UserRoleMappings();
            UserValidationMappings();
            SupplierMappings();
            StockMappings();
            RegisterInMappings();
            RegisterInStockMappings();
            RegisterOutMappings();
            RegisterOutStockMappings();
            StockTypeMappings();
        }

        private void StockTypeMappings()
        {
            CreateMap<StockType, StockTypeModel>().ReverseMap();
            CreateMap<StockType, StockTypeAddModel>().ReverseMap();
            CreateMap<StockType, StockTypeGetModel>().ReverseMap();
            CreateMap<StockType, StockTypePatchModel>().ReverseMap();
            CreateMap<StockType, StockTypeUpdateModel>().ReverseMap();
        }

        private void RegisterOutStockMappings()
        {
            CreateMap<RegisterOutStock, RegisterOutStockGetRegisterOutModel>().ReverseMap();
            CreateMap<RegisterOutStock, RegisterOutStockGetStockModel>().ReverseMap();
            CreateMap<RegisterOutStock, RegisterOutStockPatchModel>().ReverseMap();
            CreateMap<RegisterOutStock, RegisterOutStockModel>().ReverseMap();
        }

        private void RegisterOutMappings()
        {
            CreateMap<RegisterOut, RegisterOutModel>().ReverseMap();
            CreateMap<RegisterOut, RegisterOutAddModel>().ReverseMap();
            CreateMap<RegisterOut, RegisterOutGetModel>().ReverseMap();
            CreateMap<RegisterOut, RegisterOutPatchModel>().ReverseMap();
            CreateMap<RegisterOut, RegisterOutUpdateModel>().ReverseMap();
        }

        private void RegisterInStockMappings()
        {
            CreateMap<RegisterInStock, RegisterInStockGetRegisterInRestockReportModel>().ReverseMap();
            CreateMap<RegisterInStock, RegisterInStockGetRegisterInModel>().ReverseMap();
            CreateMap<RegisterInStock, RegisterInStockGetStockModel>().ReverseMap();
            CreateMap<RegisterInStock, RegisterInStockPatchModel>().ReverseMap();
            CreateMap<RegisterInStock, RegisterInStockModel>().ReverseMap();
        }

        private void RegisterInMappings()
        {
            CreateMap<RegisterIn, RegisterInModel>().ReverseMap();
            CreateMap<RegisterIn, RegisterInAddModel>().ReverseMap();
            CreateMap<RegisterIn, RegisterInGetModel>().ReverseMap();
            CreateMap<RegisterIn, RegisterInGetRestockReportModel>().ReverseMap();
            CreateMap<RegisterIn, RegisterInPatchModel>().ReverseMap();
            CreateMap<RegisterIn, RegisterInUpdateModel>().ReverseMap();
        }

        private void StockMappings()
        {
            CreateMap<Stock, StockModel>().ReverseMap();
            CreateMap<Stock, StockAddModel>().ReverseMap();
            CreateMap<Stock, StockGetModel>().ReverseMap();
            CreateMap<Stock, StockPatchModel>().ReverseMap();
            CreateMap<Stock, StockUpdateModel>().ReverseMap();
            CreateMap<Stock, StockGetRestockReportModel>().ReverseMap();
        }

        private void SupplierMappings()
        {
            CreateMap<Supplier, SupplierModel>().ReverseMap();
            CreateMap<Supplier, SupplierAddModel>().ReverseMap();
            CreateMap<Supplier, SupplierGetModel>().ReverseMap();
            CreateMap<Supplier, SupplierPatchModel>().ReverseMap();
            CreateMap<Supplier, SupplierUpdateModel>().ReverseMap();
        }

        private void EmployeeMappings()
        {
            CreateMap<Employee, EmployeeModel>().ReverseMap();
            CreateMap<Employee, EmployeeAddModel>().ReverseMap();
            CreateMap<Employee, EmployeeGetModel>().ReverseMap();
            CreateMap<Employee, EmployeePatchModel>().ReverseMap();
            CreateMap<Employee, EmployeeUpdateModel>().ReverseMap();
            CreateMap<Employee, GenericUserProfileGetWithoutSensitiveDataModel>().ReverseMap();
            CreateMap<Employee, EmployeeGetWithoutSensitiveDataModel>().ReverseMap();
        }

        private void ManagerMappings()
        {
            CreateMap<Manager, ManagerModel>().ReverseMap();
            CreateMap<Manager, ManagerAddModel>().ReverseMap();
            CreateMap<Manager, ManagerGetModel>().ReverseMap();
            CreateMap<Manager, ManagerUpdateModel>().ReverseMap();
            CreateMap<Manager, GenericUserProfileGetWithoutSensitiveDataModel>().ReverseMap();
            CreateMap<Manager, ManagerGetWithoutSensitiveDataModel>().ReverseMap();
        }

        private void UserValidationMappings()
        {
            CreateMap<UserValidation, UserValidationModel>().ReverseMap();
            CreateMap<UserValidation, UserValidationAddModel>().ReverseMap();
            CreateMap<UserValidation, UserValidationGetModel>().ReverseMap();
            CreateMap<UserValidation, UserValidationGetModel>().ReverseMap();
            CreateMap<UserValidation, UserValidationUpdateModel>().ReverseMap();
            CreateMap<UserValidation, UserValidationGetWithoutSensitiveDataModel>().ReverseMap();
            CreateMap<UserValidationModel, UserValidationGetWithoutSensitiveDataModel>().ReverseMap();
        }

        private void RoleMappings()
        {
            CreateMap<Role, RoleModel>().ReverseMap();
            CreateMap<Role, RoleAddModel>().ReverseMap();
            CreateMap<Role, RoleGetModel>().ReverseMap();
            CreateMap<Role, RoleUpdateModel>().ReverseMap();
        }

        private void UserRoleMappings()
        {
            CreateMap<UserRole, UserRoleModel>().ReverseMap();
            CreateMap<UserRole, UserRoleGetRoleModel>().ReverseMap();
        }

        private void UserMappings()
        {
            CreateMap<User, UserModel>().ReverseMap();
            CreateMap<User, UserGetModel>().ReverseMap();
            CreateMap<User, UserAddModel>();
            CreateMap<User, UserUpdateModel>();
            CreateMap<UserModel, UserUpdateModel>();
            CreateMap<UserModel, UserGetModel>();
            CreateMap<UserModel, UserSignInModel>();
            CreateMap<UserAddModel, User>()
                .ForMember(dest => dest.Password, opt => opt.MapFrom(src => string.IsNullOrEmpty(src.Password) ? null : Encoding.UTF8.GetBytes(RSACipherHelper.EncryptString(src.Password))));
            //.ForMember(dest => dest.SocialMediaToken, opt => opt.MapFrom(src => string.IsNullOrEmpty(src.SocialMediaToken) ? null : Encoding.UTF8.GetBytes(RSACipherHelper.EncryptString(src.SocialMediaToken))));
            CreateMap<UserUpdateModel, User>()
                .ForMember(dest => dest.Password, opt => opt.Ignore());
            //.ForMember(dest => dest.SocialMediaToken, opt => opt.Ignore());
        }
    }
}