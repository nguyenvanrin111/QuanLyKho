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
    public class ControlBarVM : BaseViewModel
    {
        #region commands
        public ICommand CloseWindownCommand { get; set; }
        public ICommand MaximizeWindownCommand { get; set; }
        public ICommand MinimizeWindownCommand { get; set; }
        public ICommand MouseMoveWindownCommand { get; set; }


        #endregion
        public ControlBarVM() 
        {
            CloseWindownCommand = new RelayCommand<UserControl>((p)=> { return p == null? false : true; ; }, (p)=> { 
                FrameworkElement windown = GetWindownParent(p);
                var w = windown as Window;
                if (w != null)
                {
                    w.Close();
                }
            });
            MaximizeWindownCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; ; }, (p) => {
                FrameworkElement windown = GetWindownParent(p);
                var w = windown as Window;
                if (w != null)
                {
                    if(w.WindowState != WindowState.Maximized)
                    {
                        w.WindowState = WindowState.Maximized;
                    }
                    else
                    {
                        w.WindowState=WindowState.Normal;
                    }
                }
            });
            MinimizeWindownCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; ; }, (p) => {
                FrameworkElement windown = GetWindownParent(p);
                var w = windown as Window;
                if (w != null)
                {
                    if (w.WindowState != WindowState.Minimized)
                    {
                        w.WindowState = WindowState.Minimized;
                    }
                    else
                    {
                        w.WindowState = WindowState.Maximized;
                    }
                }
            });
            MouseMoveWindownCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; ; }, (p) => {
                FrameworkElement windown = GetWindownParent(p);
                var w = windown as Window;
                if (w != null)
                {
                    w.DragMove();
                }
            });
        }

        FrameworkElement GetWindownParent(UserControl p)
        {
            FrameworkElement parent = p;
            while (parent.Parent != null)
            {
                parent = parent.Parent as FrameworkElement;
            }
            return parent;
        }
    }
}
