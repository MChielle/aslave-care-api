using AutoMapper;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Helpers;
using SlaveCare.Domain.Models.v1.Employee;
using SlaveCare.Domain.Models.v1.Manager;
using SlaveCare.Domain.Models.v1.Role;
using SlaveCare.Domain.Models.v1.Stock;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Domain.Models.v1.User;
using SlaveCare.Domain.Models.v1.UserRole;
using SlaveCare.Domain.Models.v1.UserValidation;
using System.Text;
using SlaveCare.Domain.Models.v1.RegisterIn;
using SlaveCare.Domain.Models.v1.RegisterInStock;

namespace SlaveCare.Service.Mappings
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
        }

        private void RegisterInStockMappings()
        {
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
            CreateMap<Employee, EmployeeGetWithoutSensitiveDataModel>().ReverseMap();
        }

        private void ManagerMappings()
        {
            CreateMap<Manager, ManagerModel>().ReverseMap();
            CreateMap<Manager, ManagerAddModel>().ReverseMap();
            CreateMap<Manager, ManagerGetModel>().ReverseMap();
            CreateMap<Manager, ManagerUpdateModel>().ReverseMap();
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