using System;
using System.Collections.Generic;

namespace Quanlybanhang.Models
{
    public partial class InputInfo
    {
        public InputInfo()
        {
            OutputInfos = new HashSet<OutputInfo>();
        }

        public string Id { get; set; } = null!;
        public string IdProduct { get; set; } = null!;
        public string IdInput { get; set; } = null!;
        public int? Quantity { get; set; }
        public double? InputPrice { get; set; }
        public double? OutputPrice { get; set; }
        public string? Status { get; set; }

        public virtual Input IdInputNavigation { get; set; } = null!;
        public virtual Product IdProductNavigation { get; set; } = null!;
        public virtual ICollection<OutputInfo> OutputInfos { get; set; }
    }
}
