   M S B A M L   `   `   `  ����H  DQuanlybanhang, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanlybanhangQuanlybanhang  5   	   I)clr-namespace:Quanlybanhang.UserControlQLQuanlybanhang.UserControlQL  5	   	       Quanlybanhang.LoginWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   'localclr-namespace:Quanlybanhang  5   	   2uc)clr-namespace:Quanlybanhang.UserControlQL  5	   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5        $��loginWindown��5   
      MaterialDesignBody#���   5   	   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
    � 
ResizeMode$ NoResize=�5   
     LoginVM � DataContext# [ 5   	    � WindowStyle$
 None=�5   
    � WindowStartupLocation$ CenterScreen=�5   
    � Title$ Login��5   	   $	��300��6   $	��400��6$   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      .   (Quanlybanhang.UserControlQL.ControlBarUC  
 � Tag 6   �� *Title+	 �� ElementName$	 loginWindown��6O   5      #  MaterialDesignThemes.Wpf.Card  5    
   $��1��6   $	��150��6+   $	��300��68   $��Center=�6D   $��Center=�6a   .��5!      � 
 � 	Resources
 5"       �� 
TargetType �� Property �� Value��%^   '�       �� 5#      " �6   .�5$      ��  � ��$ 	15 0 15 0q�63   6G   5%      5&       5'      �� 5(      6&   �� 5)      6&   �� 5*      6&   .+�5-      � $��0��6   .+�5.      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên Đăng Nhập��50       % !MaterialDesignFloatingHintTextBox#��[ 51      ��5/      �� *
Username+51      52      � 53      $��1��6   .+�54      G� -   5         G�Name$ FloatingPasswordBox��55      $ Mật Khẩu��56       ) %MaterialDesignFloatingHintPasswordBox#��[ 57      .  (System.Windows.Interactivity.Interaction   Triggers 58      /  )System.Windows.Interactivity.EventTrigger  59         	EventName$ PasswordChanged��6-   .  (System.Windows.Interactivity.TriggerBase   Actions. 5:   "   6  0System.Windows.Interactivity.InvokeCommandAction     Command 68   �� *PasswordChangedCommand+   CommandParameter 6c   �� $	 FloatingPasswordBox��5;      5=      5>      � 5?      $��2��6    � ColumnDefinitions 5@      �� 5A      6-   �� 5B      6-   .+�5D      �� $��0��6    �� 	IsDefault$
 True��5E       $  MaterialDesignRaisedAccentButton#��[ 5F      $	��100��5G       � ToolTip$4 .Resource name: MaterialDesignRaisedLightButton��5J      $��Đăng Nhập��5K      ��5H      �� *LoginCommand+��5I      �� $	 loginWindown��5L      �� 5M      $��1��6    # MaterialDesignRaisedLightButton#��[ 5P      $	��100��5Q      
��� E��$4 .Resource name: MaterialDesignRaisedLightButton��5S      $��Thoát��5T      ��5N      �� *CloseCommand+��5O      �� $	 loginWindown��5U      5V      5W      5X      5Y      5Z      