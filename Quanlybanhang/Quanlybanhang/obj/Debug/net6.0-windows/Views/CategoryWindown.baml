   M S B A M L   `   `   `  ����H  DQuanlybanhang, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanlybanhangQuanlybanhang  5   	   I)clr-namespace:Quanlybanhang.UserControlQLQuanlybanhang.UserControlQL  5
   	   #    Quanlybanhang.CategoryWindown   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Quanlybanhang     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   
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
 CateVM � DataContext# [ 5   
    � 
ResizeMode$ NoResize=�5   
    � WindowStyle$
 None=�5   
    � Title$ Loại Sản Phẩm��5   	   $	��450��6   $	��500��6,   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      .   (Quanlybanhang.UserControlQL.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 windown��6J   5       � 5!   
   $��1��6    5"      �� 5#      $
��auto �6    60   �� 5$      $
��auto �6    60   �� 5%      6"   .+�5)      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��5q�6/   .��5*      � .+�5-      �� $	��150��6   $��5 5 15 5q�5.      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$

 Tên��50       % !MaterialDesignFloatingHintTextBox#��[ 52      ��5/      �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�52      54      55        58      $��1��6"   $��5q�6/   .��59      � $��Center=�6   .+�5:      �� $��5q�6<   $��Thêm��6G   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5;      $��5q�6=   $��Sửa��6H   $	��100��6V   ��6   �� *EditCommand+6d   �� 5<      $��5q�6?   $
��Xoá��6J   $	��100��6X   ��6   �� *DeleteCommand+6f   5=      5>        5?      $��2��6"   $��Stretch=�6/   .��5@      �  5A      �� 5B      $
��auto �6(   68   �� 5C      6*   .+�5E      � $��0��6   $��5q�6(    � ColumnDefinitions 5F      �� 5G      $
��auto �6/   6>   �� 5H      61   .+�5K      �� $��0��6"   $��5q�5L      $	��100��5M   "   $

 Tên��5O      #��[ 5P      � 5R      $��1��6   .+�5S      ��  # MaterialDesignRaisedLightButton#��[ 6%   $	��100��5T   -   $
��Left=�5U   -    � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5V   -   $��Lọc��5W   -   $��8q�5X   -   5Y      5Z      5[      �� 5\      $��1��6#   $
��Auto=�60   .��5]      �� ��6$   �� *List+ �� SelectedItem 6A   �� *SelectedItem+$ OneWayToSource=� �� View 5^      �� 5_   "   .P�5`   &   �� $��ID��65    �� DisplayMemberBinding 6A   �� *Id+6g   �� 5a   &   $
��Tên��65    6B   �� *DisplayName+6q   5c   #   5e      5f      5h      5i      5j      5k      5l      