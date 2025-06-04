using AslaveCare.Domain.Entities;
using AslaveCare.Domain.Interfaces.Repositories.v1;
using AslaveCare.Domain.Models.v1.Supplier;
using AslaveCare.Infra.Data.Context;
using AslaveCare.Infra.Data.Context.RepositoryContext;
using AslaveCare.Infra.Data.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace AslaveCare.Infra.Data.Repositories.v1
{
    public class SupplierRepository : RepositoryBase<BaseContext, Supplier, Guid>, ISupplierRepository
    {
        public SupplierRepository(BaseContext context, IRepositoryContext repositoryContext)
            : base(context, repositoryContext)
        {
        }

        public override async Task<Supplier> GetCompleteByIdAsync(Guid id, CancellationToken cancellationToken = default)
        {
            return await GetByIdAsync(id, cancellationToken);
        }

        public async Task<Supplier> GetByEmailAsync(string email, CancellationToken cancellation = default)
        {
            return await _context.Suppliers
                .AsNoTracking()
                .FirstOrDefaultAsync(x => x.Email.Equals(email), cancellation);
        }

        public async Task<List<Supplier>> GetToListAsync(CancellationToken cancellation = default)
        {
            return await _context.Suppliers
                .AsNoTracking()
                .Where(x => x.DeletionDate.Equals(null))
                .ToListAsync(cancellation);
        }

        public async Task<List<Supplier>> GetByParameters(SupplierGetByParametersModel parameters, CancellationToken cancellation = default)
        {
            return await _context.Suppliers
                .AsNoTracking()
                .Where(x => !parameters.Id.HasValue ? true : x.Id == parameters.Id)
                .Where(x => string.IsNullOrEmpty(parameters.Name) ? true : x.Name == parameters.Name)
                .Where(x => string.IsNullOrEmpty(parameters.PhoneNumber) ? true : x.PhoneNumber == parameters.PhoneNumber)
                .Where(x => string.IsNullOrEmpty(parameters.Email) ? true : x.Email == parameters.Email)
                .Where(x => !parameters.Disable.HasValue ? true : x.Disable == parameters.Disable)
                .ToListAsync(cancellation);
        }
    }
}