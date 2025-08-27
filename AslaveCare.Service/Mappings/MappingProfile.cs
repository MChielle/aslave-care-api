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
using AslaveCare.Domain.Models.v1.Stock.GetHistoryReport;
using AslaveCare.Domain.Models.v1.StockType;
using AslaveCare.Domain.Models.v1.Supplier;
using AslaveCare.Domain.Models.v1.TaskNote;
using AslaveCare.Domain.Models.v1.User;
using AslaveCare.Domain.Models.v1.UserRole;
using AslaveCare.Domain.Models.v1.UserValidation;
using AutoMapper;
using System.Linq;
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
            TaskNoteMappings();
        }

        private void TaskNoteMappings()
        {
            CreateMap<TaskNote, TaskNoteModel>().ReverseMap();
            CreateMap<TaskNote, TaskNoteAddModel>().ReverseMap();
            CreateMap<TaskNote, TaskNoteGetModel>();
            CreateMap<TaskNote, TaskNotePatchModel>().ReverseMap();
            CreateMap<TaskNote, TaskNoteUpdateModel>().ReverseMap();
        }

        private void StockTypeMappings()
        {
            CreateMap<StockType, StockTypeModel>().ReverseMap();
            CreateMap<StockType, StockTypeAddModel>().ReverseMap();
            CreateMap<StockType, StockTypeGetModel>();
            CreateMap<StockType, StockTypePatchModel>().ReverseMap();
            CreateMap<StockType, StockTypeUpdateModel>().ReverseMap();
        }

        private void RegisterOutStockMappings()
        {
            CreateMap<RegisterOutStock, RegisterOutStockGetRegisterOutModel>()
                .ForMember(dest => dest.RegisterOut, opt => opt.Ignore());
            CreateMap<RegisterOutStock, RegisterOutStockGetStockModel>();
            CreateMap<RegisterOutStock, RegisterOutStockPatchModel>().ReverseMap();
            CreateMap<RegisterOutStock, RegisterOutStockModel>().ReverseMap();
            CreateMap<RegisterOutStock, RegisterOutStockGetConsumptionReportModel>()
                .ForMember(dest => dest.StockName, opt => opt.MapFrom(src => src.Stock.Name))
                .ForMember(dest => dest.StockTypeId, opt => opt.MapFrom(src => src.Stock.StockTypeId));

            CreateMap<RegisterOutStock, StockGetRegisterHistoryReportModel>()
                .ForMember(dest => dest.RegisterType, opt => opt.MapFrom(src => "Consumo"))
                .ForMember(dest => dest.RegisterApplyDate, opt => opt.MapFrom(src => src.RegisterOut.ApplyDate.Value))
                .ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.RegisterOut.Id))
                .ForMember(dest => dest.Quantity, opt => opt.MapFrom(src => src.Quantity))
                .ForMember(dest => dest.RegisterNumber, opt => opt.MapFrom(src => src.RegisterOut.Number));
        }

        private void RegisterOutMappings()
        {
            CreateMap<RegisterOut, RegisterOutModel>().ReverseMap();
            CreateMap<RegisterOut, RegisterOutAddModel>().ReverseMap();
            CreateMap<RegisterOut, RegisterOutGetModel>();
            CreateMap<RegisterOut, RegisterOutPatchModel>().ReverseMap();
            CreateMap<RegisterOut, RegisterOutUpdateModel>().ReverseMap();
        }

        private void RegisterInStockMappings()
        {
            CreateMap<RegisterInStock, RegisterInStockGetRegisterInRestockReportModel>();
            CreateMap<RegisterInStock, RegisterInStockGetRegisterInModel>();
            CreateMap<RegisterInStock, RegisterInStockGetStockModel>();
            CreateMap<RegisterInStock, RegisterInStockPatchModel>().ReverseMap();
            CreateMap<RegisterInStock, RegisterInStockModel>().ReverseMap();

            CreateMap<RegisterInStock, RegisterInStockGetDonationReportModel>()
                .ForMember(dest => dest.StockName, opt => opt.MapFrom(src => src.Stock.Name))
                .ForMember(dest => dest.StockTypeId, opt => opt.MapFrom(src => src.Stock.StockTypeId))
                .ForMember(dest => dest.Total, opt => opt.MapFrom(src => src.Price));

            CreateMap<RegisterInStock, StockGetRegisterHistoryReportModel>()
                .ForMember(dest => dest.RegisterType, opt => opt.MapFrom(src => "Aquisição"))
                .ForMember(dest => dest.RegisterApplyDate, opt => opt.MapFrom(src => src.RegisterIn.ApplyDate.Value))
                .ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.RegisterIn.Id))
                .ForMember(dest => dest.Quantity, opt => opt.MapFrom(src => src.Quantity))
                .ForMember(dest => dest.RegisterNumber, opt => opt.MapFrom(src => src.RegisterIn.Number));
        }

        private void RegisterInMappings()
        {
            CreateMap<RegisterIn, RegisterInModel>().ReverseMap();
            CreateMap<RegisterIn, RegisterInAddModel>().ReverseMap();
            CreateMap<RegisterIn, RegisterInGetModel>();
            CreateMap<RegisterIn, RegisterInGetRestockReportModel>();
            CreateMap<RegisterIn, RegisterInPatchModel>().ReverseMap();
            CreateMap<RegisterIn, RegisterInUpdateModel>().ReverseMap();
        }

        private void StockMappings()
        {
            CreateMap<Stock, StockModel>().ReverseMap();
            CreateMap<Stock, StockAddModel>().ReverseMap();
            CreateMap<Stock, StockGetModel>()
                .ForMember(dest => dest.RegisterInStocks, opt => opt.Ignore())
                .ForMember(dest => dest.RegisterOutStocks, opt => opt.Ignore());
            CreateMap<Stock, StockPatchModel>().ReverseMap();
            CreateMap<Stock, StockUpdateModel>().ReverseMap();
            CreateMap<Stock, StockGetRestockReportModel>();
        }

        private void SupplierMappings()
        {
            CreateMap<Supplier, SupplierModel>().ReverseMap();
            CreateMap<Supplier, SupplierAddModel>().ReverseMap();
            CreateMap<Supplier, SupplierGetModel>();
            CreateMap<Supplier, SupplierPatchModel>().ReverseMap();
            CreateMap<Supplier, SupplierUpdateModel>().ReverseMap();

            CreateMap<Supplier, SupplierGetDonorModel>()
                .ForMember(dest => dest.Quantity,
                opt => opt.MapFrom(src =>
                src.RegistersIn.Sum(x => x.RegisterInStocks.Sum(x => x.Quantity))));
        }

        private void EmployeeMappings()
        {
            CreateMap<Employee, EmployeeModel>().ReverseMap();
            CreateMap<Employee, EmployeeAddModel>().ReverseMap();
            CreateMap<Employee, EmployeeGetModel>();
            CreateMap<Employee, EmployeePatchModel>().ReverseMap();
            CreateMap<Employee, EmployeeUpdateModel>().ReverseMap();
            CreateMap<Employee, GenericUserProfileGetWithoutSensitiveDataModel>();
            CreateMap<Employee, EmployeeGetWithoutSensitiveDataModel>();
        }

        private void ManagerMappings()
        {
            CreateMap<Manager, ManagerModel>().ReverseMap();
            CreateMap<Manager, ManagerAddModel>().ReverseMap();
            CreateMap<Manager, ManagerGetModel>();
            CreateMap<Manager, ManagerUpdateModel>().ReverseMap();
            CreateMap<Manager, GenericUserProfileGetWithoutSensitiveDataModel>();
            CreateMap<Manager, ManagerGetWithoutSensitiveDataModel>();
        }

        private void UserValidationMappings()
        {
            CreateMap<UserValidation, UserValidationModel>().ReverseMap();
            CreateMap<UserValidation, UserValidationAddModel>().ReverseMap();
            CreateMap<UserValidation, UserValidationGetModel>();
            CreateMap<UserValidation, UserValidationGetModel>();
            CreateMap<UserValidation, UserValidationUpdateModel>().ReverseMap();
            CreateMap<UserValidation, UserValidationGetWithoutSensitiveDataModel>();
            CreateMap<UserValidationModel, UserValidationGetWithoutSensitiveDataModel>();
        }

        private void RoleMappings()
        {
            CreateMap<Role, RoleModel>().ReverseMap();
            CreateMap<Role, RoleAddModel>().ReverseMap();
            CreateMap<Role, RoleGetModel>();
            CreateMap<Role, RoleUpdateModel>().ReverseMap();
        }

        private void UserRoleMappings()
        {
            CreateMap<UserRole, UserRoleModel>().ReverseMap();
            CreateMap<UserRole, UserRoleGetRoleModel>();
        }

        private void UserMappings()
        {
            CreateMap<User, UserModel>().ReverseMap();
            CreateMap<User, UserGetModel>();
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