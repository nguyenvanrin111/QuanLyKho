   M S B A M L   `   `   `  ����H  DQuanlybanhang, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanlybanhangQuanlybanhang  5   	   I)clr-namespace:Quanlybanhang.UserControlQLQuanlybanhang.UserControlQL  5
   	   "    Quanlybanhang.CustomerWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Quanlybanhang     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   2uc)clr-namespace:Quanlybanhang.UserControlQL  5
   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  windown��5   
      MaterialDesignBody#���   5   
   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
     
CustomerVM � DataContext# [ 5   
    � 
ResizeMode$ NoResize=�5   
    � WindowStyle$
 None=�5   
    � Title$ Khách Hàng��5   	   $	��450��6   $	��950��6)   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      .   (Quanlybanhang.UserControlQL.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 windown��6J   5       � 5"   
   $��1��6    5#      �� 5$      $
��auto �6    60   �� 5%      $
��auto �6    60   �� 5&      6"   .+�5*      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5+      � .+�5.      �� $	��150��6   $��5 5 15 5q�5/      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Nhà Cung Cấp��51       % !MaterialDesignFloatingHintTextBox#��[ 52      ��50      �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�52      �� 53      $	��150��6   $��5 5 15 5q�54      $
 Địa chỉ��56      #��[ 57      ��55      �� *	Address+$ PropertyChanged=�57      �� 58      $	��150��6   $��5 5 15 5q�59      $

 SĐT��5;      #��[ 5<      ��5:      �� *Phone+$ PropertyChanged=�5<      �� 5=      $	��150��6   $��5 5 15 5q�5>      $
 Email��5@      #��[ 5A      ��5?      �� *Email+$ PropertyChanged=�5A      �� 5B      $	��150��6   $��5 5 15 5q�5C      $
 Thông Tin Thêm��5E      #��[ 5F      ��5D      �� *
MoreInfo+$ PropertyChanged=�5F      (  "System.Windows.Controls.DatePicker  5G      $	��150��6!   $��5 5 15 5q�5H   !   $
 Ngày ký hợp đồng��5I   !    ( $MaterialDesignFloatingHintDatePicker#��[ 5K   !      SelectedDate 5J   !   �� *ContractDate+$ PropertyChanged=�5K   !     5L      $	��150��6!   $��5 5 15 5q�5M   !   $
 Hết hạn hợp đồng��5O   !   #��[ 5P   !    5N   !   �� *TermofContract+$ PropertyChanged=�5P   !   5Q      5R        5U      $��1��6"   $��5q�6/   .��5V      � $��Center=�6   .+�5W      �� $��5q�6<   $��Thêm��6G   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5X      $��5q�6=   $��Sửa��6H   $	��100��6V   ��6   �� *EditCommand+6d   �� 5Y      $��5q�6?   $
��Xoá��6J   $	��100��6X   ��6   �� *DeleteCommand+6f   5Z      5[        5\      $��2��6"   $��Stretch=�6/   .��5]      �  5^      �� 5_      $
��auto �6(   68   �� 5`      6*   .+�5b      � $��0��6   $��5q�6(    � ColumnDefinitions 5c      �� 5d      $
��auto �6/   6>   �� 5e      61   .+�5h      �� $��0��6"   $��5q�5i      $	��100��5j   "   $

 Tên��5l      #��[ 5m      � 5o      $��1��6   .+�5p      ��  # MaterialDesignRaisedLightButton#��[ 6%   $	��100��5q   -   $
��Left=�5r   -    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5s   -   $��Lọc��5t   -   $��8q�5u   -   5v      5w      5x      �� 5y      $��1��6#   $
��Auto=�60   .��5z      �� ��6$   �� *List+ �� SelectedItem 6A   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5{      �� 5|   "   .P�5}   &   �� $��ID��65    �� DisplayMemberBinding 6A   �� *Id+6g   �� 5~   &   $��Nhà Cung Cấp��65    6K   �� *DisplayName+6z   �� 5   &   $��Địa Chỉ��65    6F   �� *	Address+6q   �� 5�   &   $
��SĐT��65    6B   �� *Phone+6k   �� 5�   &   $��Email��65    6D   �� *Email+6m   �� 5�   &   $��Thông Tin Thêm��65    6M   �� *
MoreInfo+6y   �� 5�   &   $��Ngày hợp tác��65    6K   �� *ContractDate+6{   �� 5�   &   $��Ngày Hết Hạn��65    6K   �� *TermofContract+6}   5�   #   5�      5�      5�      5�      5�      5�      5�      