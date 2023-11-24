using Quanlybanhang.ViewModel;
using System;
using System.Collections.Generic;

namespace Quanlybanhang.Models
{
    public partial class Category : BaseViewModel
    {
        public Category()
        {
            Products = new HashSet<Product>();
        }

        public int Id { get; set; }

        private string _Displayname;
        public string? DisplayName
        {
            get { return _Displayname; }
            set
            {
                _Displayname = value;
                OnPropertyChanged();
            }
        }

        public virtual ICollection<Product> Products { get; set; }
    }
}
