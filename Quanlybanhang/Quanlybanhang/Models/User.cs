using System;
using System.Collections.Generic;

namespace Quanlybanhang.Models
{
    public partial class User
    {
        public int Id { get; set; }
        public int IdRole { get; set; }
        public string? Name { get; set; }
        public string? UserName { get; set; }
        public string? Password { get; set; }
        public string? Phone { get; set; }
        public string? Email { get; set; }
        public DateTime? ContractDate { get; set; }
        public DateTime? TermofContract { get; set; }

        public virtual Role IdRoleNavigation { get; set; } = null!;
    }
}
