using Microsoft.EntityFrameworkCore;
using SlaveCare.Domain.Entities;
using SlaveCare.Domain.Interfaces.Repositories;
using SlaveCare.Domain.Models.v1.Supplier;
using SlaveCare.Infra.Data.Context;
using SlaveCare.Infra.Data.Context.RepositoryContext;
using SlaveCare.Infra.Data.Repositories.Core;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace SlaveCare.Infra.Data.Repositories
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
                .ToListAsync();
        }

        public async Task<List<Supplier>> GetByParameters(SupplierGetByParametersModel parameters, object cancellation)
        {
            return await _context.Suppliers
                .AsNoTracking()
                .Where(x => !parameters.Id.HasValue ? true : x.Id == parameters.Id)
                .Where(x => string.IsNullOrEmpty(parameters.Name)  ? true : x.Name == parameters.Name)
                .Where(x => string.IsNullOrEmpty(parameters.PhoneNumber) ? true : x.PhoneNumber == parameters.PhoneNumber)
                .Where(x => string.IsNullOrEmpty(parameters.Email) ? true : x.Email == parameters.Email)
                .Where(x => !parameters.Disable.HasValue ? true : x.Disable == parameters.Disable )
                .ToListAsync();
        }
    }
}