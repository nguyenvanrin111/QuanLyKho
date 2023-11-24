using MaterialDesignThemes.Wpf;
using Quanlybanhang.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Quanlybanhang.ViewModel
{
    public class MainViewModel:BaseViewModel
    {
        private QuanLyKhoPRN221Context _context;
        private ObservableCollection<TonKho> _ListTonKho;
        public ObservableCollection<TonKho> ListTonKho {
            get { return _ListTonKho; }
            set { _ListTonKho = value; OnPropertyChanged(); }
        }

        public bool isLoaded = false;
        public ICommand LoadedWindownCommand { get; set; }
        public ICommand AccountCommand { get; set; }

        public ICommand SupplierCommand { get; set; }
        public ICommand CustomerCommand { get; set; }

        public ICommand CategoryCommand { get; set; }

        public ICommand ProductCommand { get; set; }

        public ICommand InputCommand { get; set; }
        public ICommand OutputCommand { get; set; }


        public MainViewModel() 
        {
            _context = new QuanLyKhoPRN221Context();
            LoadedWindownCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                isLoaded = true;

                if (p == null) return;
                p.Hide();
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();

                if (loginWindow.DataContext == null) return;
                var loginVM = loginWindow.DataContext as LoginViewModel;

                if (loginVM.IsLogin)
                {
                    p.Show();
                    LoadTonKhoData();
                }
                else
                {
                    p.Close();
                }
                
            });

            AccountCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                ManagerAccount wd = new ManagerAccount();
                wd.ShowDialog();
            });

            SupplierCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                SupplierWindown wd = new SupplierWindown();
                wd.ShowDialog();
            });

            CustomerCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                
                CustomerWindow wd = new CustomerWindow();
                wd.ShowDialog();
            });

            CategoryCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CategoryWindown wd = new CategoryWindown();
                wd.ShowDialog();
            });

            ProductCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                ProductWindown wd = new ProductWindown();
                wd.ShowDialog();
            });

            InputCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                InputWindown wd = new InputWindown();
                wd.ShowDialog();
            });
            OutputCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                OutputWindow wd = new OutputWindow();
                wd.ShowDialog();
            });

        }
        void LoadTonKhoData()
        {
            ListTonKho = new ObservableCollection<TonKho>();


            List<Product> products = _context.Products.ToList();
            int stt = 1;
            foreach (Product item in products) {
                var listInput = _context.InputInfos.Where(x => x.IdProduct == item.Id).ToList();
                var listOutput = _context.OutputInfos.Where(x => x.IdProduct == item.Id).ToList();

                int quantityInput = 0;
                int quantityOutput = 0;

                if(listInput!= null && listInput.Count() > 0) {
                    quantityInput = (int)listInput.Sum(x=>x.Quantity);
                }
                if (listOutput != null && listOutput.Count() > 0)
                {
                    quantityOutput = (int)listOutput.Sum(x => x.Quantity);
                }
                TonKho tonKho = new TonKho();
                tonKho.STT = stt;
                tonKho.Count = quantityInput-quantityOutput;
                tonKho.Product = item;

                ListTonKho.Add(tonKho);
                stt++;
            }
        }

    }
}
