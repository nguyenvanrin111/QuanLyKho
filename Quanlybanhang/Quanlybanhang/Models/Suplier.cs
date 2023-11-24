using Quanlybanhang.ViewModel;
using System;
using System.Collections.Generic;

namespace Quanlybanhang.Models
{
    public partial class Suplier: BaseViewModel
    {
        public Suplier()
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
        
        private string _Address;
        public string? Address
        {
            get { return _Address; }
            set
            {
                _Address = value;
                OnPropertyChanged();
            }
        }

        private string _Phone;
        public string? Phone
        {
            get { return _Phone; }
            set
            {
                _Phone = value;
                OnPropertyChanged();
            }
        }

        private string _Email;
        public string? Email
        {
            get { return _Email; }
            set
            {
                _Email = value;
                OnPropertyChanged();
            }
        }

        private string _MoreInfo;
        public string? MoreInfo
        {
            get { return _MoreInfo; }
            set
            {
                _MoreInfo = value;
                OnPropertyChanged();
            }
        }

        public DateTime? _ContractDate;
        public DateTime? ContractDate 
        {
            get { return _ContractDate; }
            set
            {
                _ContractDate = value;
                OnPropertyChanged();
            }
        }

        public virtual ICollection<Product> Products { get; set; }
    }
}
