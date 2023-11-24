using Quanlybanhang.ViewModel;
using System;
using System.Collections.Generic;

namespace Quanlybanhang.Models
{
    public partial class Product :BaseViewModel
    {
        public Product()
        {
            InputInfos = new HashSet<InputInfo>();
            OutputInfos = new HashSet<OutputInfo>();
        }

        private string _Id;
        public string Id
        {
            get { return _Id; }
            set
            {
                _Id = value;
                OnPropertyChanged();
            }
        }
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

        private int _IdSuplier;
        public int IdSuplier
        {
            get { return _IdSuplier; }
            set
            {
                _IdSuplier = value;
                OnPropertyChanged();
            }
        }
        private int _IdCategory;
        public int IdCategory
        {
            get { return _IdCategory; }
            set
            {
                _IdCategory = value;
                OnPropertyChanged();
            }
        }

        private int _Quantity;
        public int Quantity
        {
            get { return _Quantity; }
            set
            {
                _Quantity = value;
                OnPropertyChanged();
            }
        }
        private string _Image;
        public string? Image
        {
            get { return _Image; }
            set
            {
                _Image = value;
                OnPropertyChanged();
            }
        }

        public virtual Category IdCategoryNavigation { get; set; } = null!;
        public virtual Suplier IdSuplierNavigation { get; set; } = null!;
        public virtual ICollection<InputInfo> InputInfos { get; set; }
        public virtual ICollection<OutputInfo> OutputInfos { get; set; }
    }
}
