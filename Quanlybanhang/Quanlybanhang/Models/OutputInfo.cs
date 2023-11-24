using System;
using System.Collections.Generic;

namespace Quanlybanhang.Models
{
    public partial class OutputInfo
    {
        public string Id { get; set; } = null!;
        public string IdProduct { get; set; } = null!;
        public string IdInputInfo { get; set; } = null!;
        public int IdCustomer { get; set; }
        public string IdOutput { get; set; } = null!;
        public int? Quantity { get; set; }
        public string? Status { get; set; }

        public virtual Customer IdCustomerNavigation { get; set; } = null!;
        public virtual InputInfo IdInputInfoNavigation { get; set; } = null!;
        public virtual Output IdOutputNavigation { get; set; } = null!;
        public virtual Product IdProductNavigation { get; set; } = null!;
    }
}
