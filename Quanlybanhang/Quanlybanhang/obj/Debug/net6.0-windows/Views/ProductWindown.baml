   M S B A M L   `   `   `  ����H  DQuanlybanhang, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanlybanhangQuanlybanhang  5   	   I)clr-namespace:Quanlybanhang.UserControlQLQuanlybanhang.UserControlQL  5
   	   "    Quanlybanhang.ProductWindown   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Quanlybanhang     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   
   2uc)clr-namespace:Quanlybanhang.UserControlQL  5
   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  windown��5   
      MaterialDesignBody#���   5   
   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
     	ProductVM � DataContext# [ 5   
    � 
ResizeMode$ NoResize=�5   
    � WindowStyle$
 None=�5   
    � Title$ ProductWindown��5   	   $	��450��6    $	��800��6-   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      .   (Quanlybanhang.UserControlQL.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 windown��6J   5       � 5"   
   $��1��6    5#      �� 5$      $
��auto �6    60   �� 5%      $
��auto �6    60   �� 5&      6"   .+�5*      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5+      � .+�5,      �� $	��150��6   $��5 5 15 5q�5-      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên Sản Phẩm��5/       % !MaterialDesignFloatingHintTextBox#��[ 50      ��5.      �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�50      �� 51      $
 Loại Sản Phẩm��6    �� DisplayMemberPath$ DisplayName��52      $	��150��55      $��5 5 15 5q�56       �� 
IsEditable$
 True��57       & "MaterialDesignFloatingHintComboBox#��[ 58      ��53      �� *ListCategory+ �� SelectedItem 54      �� *SelectedCategory+ �� Mode$ TwoWay=�$ PropertyChanged=�58   ]   �� 59      $
 Nhà Cung Cấp��6   $ DisplayName��5;      $	��150��5=      $��5 5 15 5q�5>      $
 True��5?      #��[ 5@      ��5:      �� *ListSuplier+ 5<      �� *SelectedSupplier+$ TwoWay=�$ PropertyChanged=�5@   ]   �� 5A      $	��150��6   $��5 5 15 5q�5B      $
 Số Lượng��5D      #��[ 5E      ��5C      �� *
Quantity+$ PropertyChanged=�5E      �� 5F      $	��150��6   $��5 5 15 5q�5G      $
 
Link Ảnh��5I      #��[ 5J      ��5H      �� *Image+$ PropertyChanged=�5J      5L      5M        5P      $��1��6"   $��5q�6/   .��5Q      � $��Center=�6   .+�5R      �� $��5q�6<   $��Thêm��6G   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5S      $��5q�6=   $��Sửa��6H   $	��100��6V   ��6   �� *EditCommand+6d   �� 5T      $��5q�6?   $
��Xoá��6J   $	��100��6X   ��6   �� *DeleteCommand+6f   5U      5V        5W      $��2��6"   $��Stretch=�6/   .��5X      �  5Y      �� 5Z      $
��auto �6(   68   �� 5[      6*   .+�5]      � $��0��6   $��5q�6(    � ColumnDefinitions 5^      �� 5_      $
��auto �6/   6>   �� 5`      61   .+�5c      �� $��0��6"   $��5q�5d      $	��100��5e   "   $

 Tên��5g      #��[ 5h      � 5j      $��1��6   .+�5k      ��  # MaterialDesignRaisedLightButton#��[ 6%   $	��100��5l   -   $
��Left=�5m   -    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5n   -   $��Lọc��5o   -   $��8q�5p   -   5q      5r      5s      �� 5t      $��1��6#   $
��Auto=�60   .��5u      �� ��6$   �� *List+ 6A   �� *SelectedItem+$ OneWayToSource=� �� View 5v      �� 5w   "   .P�5x   &   �� $��ID��65    �� DisplayMemberBinding 6A   �� *Id+6g   �� 5y   &   $��Tên Sản Phẩm��65    6K   �� *DisplayName+6z   �� 5z   &   $��Loại Sản Phẩm��65    6L   �� *
IdCategory+6z   �� 5{   &   $��Nhà Cung Cấp��65    6K   �� *	IdSuplier+6x   �� 5|   &   $��Số Lượng��65    6G   �� *
Quantity+6s   �� 5}   &   $��Ảnh��65    6B   �� *Image+6k   5   #   5�      5�      5�      5�      5�      5�      5�      