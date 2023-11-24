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
    public class ProductViewModel : BaseViewModel
    {
        private QuanLyKhoPRN221Context _context;
        public QuanLyKhoPRN221Context Context
        {
            get { return _context; }
            set { _context = value; OnPropertyChanged(); }
        }
        private ObservableCollection<Product> _list;
        public ObservableCollection<Product> List
        {
            get { return _list; }
            set { _list = value; OnPropertyChanged(); }
        }

        private ObservableCollection<Suplier> _listSuplier;
        public ObservableCollection<Suplier> ListSuplier
        {
            get { return _listSuplier; }
            set { _listSuplier = value; OnPropertyChanged(); }
        }
        private ObservableCollection<Category> _listCategory;
        public ObservableCollection<Category> ListCategory
        {
            get { return _listCategory; }
            set { _listCategory = value; OnPropertyChanged(); }
        }

        private Product _SelectedItem;
        public Product SelectedItem
        {
            get { return _SelectedItem; }
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.DisplayName;
                    Image = SelectedItem.Image;
                    Quantity = SelectedItem.Quantity;
                    SelectedCategory = SelectedItem.IdCategoryNavigation;
                    SelectedSupplier = SelectedItem.IdSuplierNavigation;
                }
            }
        }
        private Suplier _SelectedSupplier;
        public Suplier SelectedSupplier
        {
            get { return _SelectedSupplier; }
            set
            {
                _SelectedSupplier = value;
                OnPropertyChanged();
               
            }
        }
        private Category _SelectedCategory;
        public Category SelectedCategory
        {
            get { return _SelectedCategory; }
            set
            {
                _SelectedCategory = value;
                OnPropertyChanged();

            }
        }
        private String _DisplayName;
        public String DisplayName
        {
            get { return _DisplayName; }
            set { _DisplayName = value; OnPropertyChanged(); }
        }

        private int _Quantity;
        public int Quantity
        {
            get { return _Quantity; }
            set { _Quantity = value; OnPropertyChanged(); }
        }

        private String _Image;
        public String Image
        {
            get { return _Image; }
            set { _Image = value; OnPropertyChanged(); }
        }





        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }


        public ProductViewModel()
        {
            Context = new QuanLyKhoPRN221Context();
            List = new ObservableCollection<Product>(Context.Products.ToList());
            ListCategory= new ObservableCollection<Category>(Context.Categories.ToList());
            ListSuplier = new ObservableCollection<Suplier>(Context.Supliers.ToList());

            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName)) { return false; }
                var newCategories = Context.Products.Where(x => x.DisplayName == DisplayName);
                if (newCategories == null || newCategories.Count() != 0 || SelectedSupplier == null || SelectedCategory == null)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }, (p) =>
            {
                var Product = new Product() { DisplayName = DisplayName,Image = Image, Quantity = Quantity, IdSuplier = SelectedSupplier.Id, IdCategory = SelectedCategory.Id, Id = Guid.NewGuid().ToString()};

                Context.Products.Add(Product);
                Context.SaveChanges();
                List.Add(Product);
                MessageBox.Show("Add Product Successfully");
            });


            EditCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null || SelectedSupplier == null || SelectedCategory == null) { return false; }
                var newCategories = Context.Products.Where(x => x.Id == SelectedItem.Id);
                if (newCategories != null && newCategories.Count() != 0 )
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }, (p) =>
            {
                var Product = Context.Products.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                Product.DisplayName = DisplayName;
                Product.Quantity = Quantity;
                Product.Image = Image;
                Product.IdSuplier = SelectedSupplier.Id;
                Product.IdCategory = SelectedCategory.Id;

                Context.SaveChanges();

                SelectedItem.DisplayName = DisplayName;
                MessageBox.Show("Update Successfully");

            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null) { return false; }
                var newCategories = Context.Products.Where(x => x.DisplayName == DisplayName);
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

                List<InputInfo> inputs = Context.InputInfos.Where(x => x.IdProduct == Sid).ToList();
                foreach (var input in inputs)
                {
                    input.IdProduct = null;
                    Context.SaveChanges();
                }

                List<OutputInfo> outputInfos = Context.OutputInfos.Where(x => x.IdProduct == Sid).ToList();
                foreach (var output in outputInfos)
                {
                    output.IdProduct = null;
                    Context.SaveChanges();
                }

                Product Product = Context.Products.Where(x => x.Id == Sid).FirstOrDefault();
                Context.Products.Remove(Product);
                Context.SaveChanges();
                List.Remove(Product);

                MessageBox.Show("Delete Successfully");

            });
        }
    }
}
