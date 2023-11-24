using Quanlybanhang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Quanlybanhang.ViewModel
{
    class LoginViewModel : BaseViewModel
    {
        private QuanLyKhoPRN221Context context;
        public bool IsLogin { get; set; }
        private string _username;
        public string Username
        {
            get => _username;
            set { _username = value; OnPropertyChanged(); }
        }
        private string _password;
        public string Password
        {
            get => _password;
            set { _password = value; OnPropertyChanged(); }
        }
        public ICommand LoginCommand { get; set; }
        public ICommand CloseCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }

        public LoginViewModel() {
            context = new QuanLyKhoPRN221Context();
            IsLogin = false;
            LoginCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { Login(p ); });
            CloseCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { p.Close(); });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => { 
                Password = p.Password;
            });
        }

        void Login(Window p)
        {
            context = new QuanLyKhoPRN221Context();
            if (p == null)
            {
                return;
            }
           
            User user = (User)context.Users.FirstOrDefault(x => x.UserName.Equals(Username) && x.Password.Equals(Password));
           if(user != null)
            {
                IsLogin = true;
                p.Close();
            }
            else
            {
                IsLogin = false;
                MessageBox.Show("Sai Tên Đăng Nhập hoặc Mật Khẩu");
            }
           
            
            
        }
    }
}
