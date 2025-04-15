using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SlaveCare.Domain.Entities.Core;

namespace SlaveCare.Domain.Entities
{
    public class RegisterOut : Entity<Guid>
    {
        public int Number { get; set; }
        public DateTime ApplyDate { get; set; }
        public string Description { get; set; }
        public bool Apply { get; set; }
        public List<RegisterOutStock> RegisterOutStocks { get; set; }
    }
}
