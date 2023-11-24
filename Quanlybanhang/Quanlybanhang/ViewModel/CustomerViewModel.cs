using Quanlybanhang.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;

namespace Quanlybanhang.ViewModel
{
    class CustomerViewModel: BaseViewModel
    {
        private QuanLyKhoPRN221Context _context;
        public QuanLyKhoPRN221Context Context
        {
            get { return _context; }
            set { _context = value; OnPropertyChanged(); }
        }
        private ObservableCollection<Customer> _list;
        public ObservableCollection<Customer> List
        {
            get { return _list; }
            set { _list = value; OnPropertyChanged(); }
        }

        private Customer _SelectedItem;
        public Customer SelectedItem
        {
            get { return _SelectedItem; }
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.DisplayName;
                    Address = SelectedItem.Address;
                    Phone = SelectedItem.Phone;
                    Email = SelectedItem.Email;
                    MoreInfo = SelectedItem.MoreInfo;
                    ContractDate = SelectedItem.ContractDate;
                }
            }
        }
        private String _DisplayName;
        public String DisplayName
        {
            get { return _DisplayName; }
            set { _DisplayName = value; OnPropertyChanged(); }
        }

        private String _Address;
        public String Address
        {
            get { return _Address; }
            set { _Address = value; OnPropertyChanged(); }
        }

        private String _Phone;
        public String Phone
        {
            get { return _Phone; }
            set { _Phone = value; OnPropertyChanged(); }
        }

        private String _Email;
        public String Email
        {
            get { return _Email; }
            set { _Email = value; OnPropertyChanged(); }
        }

        private String _MoreInfo;
        public String MoreInfo
        {
            get { return _MoreInfo; }
            set { _MoreInfo = value; OnPropertyChanged(); }
        }

        private DateTime? _ContractDate;
        public DateTime? ContractDate
        {
            get { return _ContractDate; }
            set { _ContractDate = value; OnPropertyChanged(); }
        }





        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }


        public CustomerViewModel()
        {
            Context = new QuanLyKhoPRN221Context();
            List = new ObservableCollection<Customer>(Context.Customers.ToList());

            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName)) { return false; }
                var newCategories = Context.Customers.Where(x => x.DisplayName == DisplayName);
                if (newCategories == null || newCategories.Count() != 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }, (p) =>
            {
                var Customer = new Customer() { DisplayName = DisplayName, Phone = Phone, Address = Address, Email = Email, ContractDate = ContractDate, MoreInfo = MoreInfo };

                Context.Customers.Add(Customer);
                Context.SaveChanges();
                List.Add(Customer);
                MessageBox.Show("Add Customer Successfully");
            });


            EditCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null) { return false; }
                var newCategories = Context.Customers.Where(x => x.Id == SelectedItem.Id);
                if (newCategories != null && newCategories.Count() != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }, (p) =>
            {
                var Customer = Context.Customers.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                Customer.DisplayName = DisplayName;
                Customer.Phone = Phone;
                Customer.Address = Address;
                Customer.Email = Email;
                Customer.ContractDate = ContractDate;
                Customer.MoreInfo = MoreInfo;

                Context.SaveChanges();

                SelectedItem.DisplayName = DisplayName;
                MessageBox.Show("Update Successfully");

            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null) { return false; }
                var newCategories = Context.Customers.Where(x => x.DisplayName == DisplayName);
                if (newCategories == null || newCategories.Count() == 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }, (p) =>
            {
                var Sid = SelectedItem.Id;



                Customer Customer = Context.Customers.Where(x => x.Id == Sid).FirstOrDefault();
                Context.Customers.Remove(Customer);
                Context.SaveChanges();
                List.Remove(Customer);

                MessageBox.Show("Delete Successfully");

            });
        }
    }
}
