using SlaveCare.Domain.Interfaces.Services.Core;
using SlaveCare.Domain.Models.v1.Employee;
using SlaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Domain.Interfaces.Services.v1
{
    public interface IEmployeeService : IServiceBase<EmployeeAddModel, EmployeeUpdateModel, EmployeePatchModel, EmployeeGetModel, EmployeeModel, Guid>
    {
        Task<IResponseBase> SoftDeleteById(Guid id);

        Task<IResponseBase> SoftDeleteByUserId(Guid userId);

        Task<IResponseBase> GetByTokenAsync(string jwtToken, CancellationToken cancellationToken);
    }
}