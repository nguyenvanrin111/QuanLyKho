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
    public class CategoryViewModel : BaseViewModel
    {
        private QuanLyKhoPRN221Context _context;
        public QuanLyKhoPRN221Context Context
        {
            get { return _context; }
            set { _context = value; OnPropertyChanged(); }
        }
        private ObservableCollection<Category> _list;
        public ObservableCollection<Category> List { 
            get { return _list; }
            set { _list = value; OnPropertyChanged(); }
        }

        private Category _SelectedItem;
        public Category SelectedItem
        {
            get { return _SelectedItem; }
            set 
            { 
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null) 
                {
                    DisplayName = SelectedItem.DisplayName; 
                } 
            }
        }
        private String _DisplayName;
        public String DisplayName
        {
            get { return _DisplayName; }
            set { _DisplayName = value; OnPropertyChanged(); }
        }



        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }


        public CategoryViewModel()
        {
            Context = new QuanLyKhoPRN221Context();
            List = new ObservableCollection<Category>(Context.Categories.ToList());

            AddCommand = new RelayCommand<object>((p) => 
            { 
                if(string.IsNullOrEmpty(DisplayName)) { return false; }
                var newCategories = Context.Categories.Where(x => x.DisplayName == DisplayName);
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
                var category = new Category() { DisplayName = DisplayName };

                Context.Categories.Add(category);
                Context.SaveChanges();
                List.Add(category);
                MessageBox.Show("Add Category Successfully");
            });


            EditCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null) { return false; }
                var newCategories = Context.Categories.Where(x => x.DisplayName == DisplayName);
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
                var category = Context.Categories.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                category.DisplayName = DisplayName;

                Context.SaveChanges();

                SelectedItem.DisplayName = DisplayName;
                MessageBox.Show("Update Successfully");

            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null) { return false; }
                var newCategories = Context.Categories.Where(x => x.DisplayName == DisplayName);
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
                var Cid = SelectedItem.Id;

               

                Category category = Context.Categories.Where(x => x.Id == Cid).FirstOrDefault();
                Context.Categories.Remove(category);
                Context.SaveChanges();
                List.Remove(category);

                MessageBox.Show("Delete Successfully");

            });
        }
    }
}
