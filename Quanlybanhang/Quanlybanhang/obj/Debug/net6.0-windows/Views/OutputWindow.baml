   M S B A M L   `   `   `  ����H  DQuanlybanhang, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanlybanhangQuanlybanhang  5   	   I)clr-namespace:Quanlybanhang.UserControlQLQuanlybanhang.UserControlQL  5
   	        Quanlybanhang.OutputWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Quanlybanhang     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   
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
    
 MainVM � DataContext# [ 5   
    � 
ResizeMode$ NoResize=�5   
    � WindowStyle$
 None=�5   
    � Title$ 
Xuất Kho��5   	   $	��450��6   $	��800��6'   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      .   (Quanlybanhang.UserControlQL.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 windown��6J   5       � 5"   
   $��1��6    5#      �� 5$      $
��auto �6    60   �� 5%      $
��auto �6    60   �� 5&      6"   .+�5*      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5+      � .+�5.      �� $	��150��6   $��5 5 15 5q�5/      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên Sản Phẩm��51       % !MaterialDesignFloatingHintTextBox#��[ 52      ��50      �� *ProducrtDisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�52      (  "System.Windows.Controls.DatePicker  53      $	��150��6!   $��5 5 15 5q�54   !   $
 Ngày Xuất��56   !    ( $MaterialDesignFloatingHintDatePicker#��[ 57   !      SelectedDate 55   !   �� *
DateOutput+$ PropertyChanged=�57   !   �� 58      $	��150��6   $��5 5 15 5q�59      $
 Số Lượng��5;      #��[ 5<      ��5:      �� *
Quantity+$ PropertyChanged=�5<      �� 5=      $	��150��6   $��5 5 15 5q�5>      $
 Giá Xuất��5@      #��[ 5A      ��5?      �� *OutputPrice+$ PropertyChanged=�5A      �� 5B      $	��150��6   $��5 5 15 5q�5C      $
 Trạng Thái Xuất��5E      #��[ 5F      ��5D      �� *Status+$ PropertyChanged=�5F      �� 5G      $
 Khách hàng��6   $	��150��5J      $��5 5 15 5q�5K       �� 
IsEditable$
 True��5L       & "MaterialDesignFloatingHintComboBox#��[ 5M      ��5H      �� *Customer.DisplayName+ �� SelectedItem 5I      �� *SelectedCustomer+ �� Mode$ TwoWay=�$ PropertyChanged=�5M   ]   5Q      5R        5U      $��1��6"   $��5q�6/   .��5V      � $��Center=�6   .+�5W      �� $��5q�6<   $��Thêm��6G   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5X      $��5q�6=   $��Sửa��6H   $	��100��6V   ��6   �� *EditCommand+6d   �� 5Y      $��5q�6?   $
��Xoá��6J   $	��100��6X   ��6   �� *DeleteCommand+6f   5Z      5[        5\      $��2��6"   $��Stretch=�6/   .��5]      �  5^      �� 5_      $
��auto �6(   68   �� 5`      6*   .+�5b      � $��0��6   $��5q�6(    � ColumnDefinitions 5c      �� 5d      $
��auto �6/   6>   �� 5e      61   .+�5h      �� $��0��6"   $��5q�5i      $	��100��5j   "   $

 Tên��5l      #��[ 5m      � 5o      $��1��6   .+�5p      ��  # MaterialDesignRaisedLightButton#��[ 6%   $	��100��5q   -   $
��Left=�5r   -    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5s   -   $��Lọc��5t   -   $��8q�5u   -   5v      �� 5w      #��[ 6%   $	��100��5x   -   $
��Left=�5y   -   $4 .Resource name: MaterialDesignRaisedLightButton��5z   -   $��Xuất Excel��5{   -   $��	560,8,0,8q�5|   -   5}      5~      5      �� 5�      $��1��6#   $
��Auto=�60   .��5�      �� ��6$   �� *List+ 6A   �� *SelectedItem+$ OneWayToSource=� �� View 5�      �� 5�   "   .P�5�   &   �� $��Sản Phẩm��65    �� DisplayMemberBinding 6G   �� *Product.DisplayName+6~   �� 5�   &   $��Ngày Xuất��65    6H   �� *Output.DateOutput+6}   �� 5�   &   $��Số Lượng Nhập��65    6L   �� *
Quantity+6x   �� 5�   &   $��Giá Xuất��65    6G   �� *InputInfo.OutputPrice+6�   �� 5�   &   $��Khách Hàng��65    6I   �� *Customer.DisplayName+6�   �� 5�   &   $��Trạng Thái Xuất��65    6N   �� *Status+6x   5�   #   5�      5�      5�      5�      5�      5�      5�      