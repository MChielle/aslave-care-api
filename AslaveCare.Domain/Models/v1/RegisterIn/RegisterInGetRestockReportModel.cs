using AslaveCare.Domain.Models.Core;
using AslaveCare.Domain.Models.v1.RegisterInStock;
using AslaveCare.Domain.Models.v1.Supplier;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AslaveCare.Domain.Models.v1.RegisterIn
{
    public class RegisterInGetRestockReportModel : EntityModel<Guid>
    {
        public int Number { get; set; }
        public Guid SupplierId { get; set; }
        public SupplierGetModel Supplier { get; set; }
        public bool Donation { get; set; }
        public DateTime? ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
    }
}
