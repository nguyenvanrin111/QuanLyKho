   M S B A M L   `   `   `  ����H  DQuanlybanhang, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanlybanhangQuanlybanhang  5   	   I)clr-namespace:Quanlybanhang.UserControlQLQuanlybanhang.UserControlQL  5
   	        Quanlybanhang.InputWindown   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Quanlybanhang     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   
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
Nhập Kho��5   	   $	��450��6   $	��800��6'   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      .   (Quanlybanhang.UserControlQL.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 windown��6J   5       � 5"   
   $��1��6    5#      �� 5$      $
��auto �6    60   �� 5%      $
��auto �6    60   �� 5&      6"   .+�5*      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5+      � .+�5.      �� $	��150��6   $��5 5 15 5q�5/      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên Sản Phẩm��51       % !MaterialDesignFloatingHintTextBox#��[ 52      ��50      �� *ProducrtDisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�52      (  "System.Windows.Controls.DatePicker  53      $	��150��6!   $��5 5 15 5q�54   !   $
 Ngày Nhập��56   !    ( $MaterialDesignFloatingHintDatePicker#��[ 57   !      SelectedDate 55   !   �� *	DateInput+$ PropertyChanged=�57   !   �� 58      $	��150��6   $��5 5 15 5q�59      $
 Số Lượng��5;      #��[ 5<      ��5:      �� *
Quantity+$ PropertyChanged=�5<      �� 5=      $	��150��6   $��5 5 15 5q�5>      $
 Giá Nhập��5@      #��[ 5A      ��5?      �� *
InputPrice+$ PropertyChanged=�5A      �� 5B      $	��150��6   $��5 5 15 5q�5C      $
 Giá Xuất��5E      #��[ 5F      ��5D      �� *OutputPrice+$ PropertyChanged=�5F      �� 5G      $	��150��6   $��5 5 15 5q�5H      $
 Trạng Thái��5J      #��[ 5K      ��5I      �� *Status+$ PropertyChanged=�5K      5P      5Q        5T      $��1��6"   $��5q�6/   .��5U      � $��Center=�6   .+�5V      �� $��5q�6<   $��Thêm��6G   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5W      $��5q�6=   $��Sửa��6H   $	��100��6V   ��6   �� *EditCommand+6d   �� 5X      $��5q�6?   $
��Xoá��6J   $	��100��6X   ��6   �� *DeleteCommand+6f   5Y      5Z        5[      $��2��6"   $��Stretch=�6/   .��5\      �  5]      �� 5^      $
��auto �6(   68   �� 5_      6*   .+�5a      � $��0��6   $��5q�6(    � ColumnDefinitions 5b      �� 5c      $
��auto �6/   6>   �� 5d      61   .+�5g      �� $��0��6"   $��5q�5h      $	��100��5i   "   $

 Tên��5k      #��[ 5l      � 5n      $��1��6   .+�5o      ��  # MaterialDesignRaisedLightButton#��[ 6%   $	��100��5p   -   $
��Left=�5q   -    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5r   -   $��Lọc��5s   -   $��8q�5t   -   5u      �� 5v      #��[ 6%   $	��100��5w   -   $
��Left=�5x   -   $4 .Resource name: MaterialDesignRaisedLightButton��5y   -   $��Xuất Excel��5z   -   $��	560,8,0,8q�5{   -   5|      5}      5~      �� 5      $��1��6#   $
��Auto=�60   .��5�      �� ��6$   �� *List+ �� SelectedItem 6A   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5�      �� 5�   "   .P�5�   &   �� $��Sản Phẩm��65    �� DisplayMemberBinding 6G   �� *Product.DisplayName+6~   �� 5�   &   $��Ngày Nhập��65    6H   �� *Input.DateInput+6{   �� 5�   &   $��Số Lượng Nhập��65    6L   �� *
Quantity+6x   �� 5�   &   $��Giá Nhập��65    6G   �� *
InputPrice+6u   �� 5�   &   $��Giá Xuất��65    6G   �� *OutputPrice+6v   �� 5�   &   $��Trạng Thái��65    6I   �� *Status+6s   5�   #   5�      5�      5�      5�      5�      5�      5�      