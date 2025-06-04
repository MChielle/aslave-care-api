using AslaveCare.Domain.Interfaces.Services.Core;
using AslaveCare.Domain.Models.v1.Employee;
using AslaveCare.Domain.Responses.Interfaces;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Interfaces.Services.v1
{
    public interface IEmployeeService : IServiceBase<EmployeeAddModel, EmployeeUpdateModel, EmployeePatchModel, EmployeeGetModel, EmployeeModel, Guid>
    {
        Task<IResponseBase> SoftDeleteById(Guid id);

        Task<IResponseBase> SoftDeleteByUserId(Guid userId);

        Task<IResponseBase> GetByTokenAsync(string jwtToken, CancellationToken cancellationToken);
        Task<IResponseBase> GetByUserIdAsync(Guid userId, CancellationToken cancellationToken);
        Task<IResponseBase> GetAnyToListAsync(CancellationToken cancellationToken);
        Task<IResponseBase> GetByIdToUpdateAsync(Guid id, CancellationToken cancellationToken);
    }
}