   M S B A M L   `   `   `  ����F  BWPFContacts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPFContactsWPFContacts  5   	   ;"clr-namespace:WPFContacts.ControlsWPFContacts.Controls  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       WPFContacts.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPFContacts     5   	   4Sgrid"clr-namespace:WPFContacts.Controls     5   	   9System&clr-namespace:System;assembly=mscorlib     5   	     � Title$  
MainWindow��5
   	   $	��600��6   $	��800��6)   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $��* �6   6+   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5         ��Name$ 	txtSearch��5       �� SelectedText$ Search Here....��6)   $	��200��6H   $��10q�6T   $��25��6`   6o   5      -   'WPFContacts.Controls.SearchableDataGrid  5$   
   -   5          Name$ grdContacts��5$   2   $��1��6#      SearchTextBoxName$ 	txtSearch��6G      IsEnableSearch . $��Stretch=�5%      $��Stretch=�61   &   System.Windows.Controls.DataGrid   AutoGenerateColumns .  	   
IsReadOnly	 . 
   CanUserDeleteRows
 .     CanUserResizeColumns .    CanUserAddRows .     CanUserReorderColumns .  �� SelectedItem 6M   �� *SelectedContact+ �� Mode$ TwoWay=���5&      ��  �� Path$ ContactCollection�$ TwoWay=�   Columns 5(      0  *System.Windows.Controls.DataGridTextColumn  5)      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6%      Header$ 
First Name��60   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *	FirstName+6d     5*      $ * 6%   $ 	Last Name��6/    6B   �� *
LastName+6a     5+      $ * 6%   $	 DOB��6/    6<   �� *DateofBirth+ �� StringFormat$ {0:dd.MM.yyyy HH:mm:ss}��6�      RowDetailsTemplate 51      �� 52      .R�53      � 
���/��� � ColumnDefinitions 55      �� 56      $��* �6/   6;   �� 57      $��* �6/   6;   .+�59          Name$ 	EmailGrid��6/   $��5q�6$   $��Stretch=�6B   $��Stretch=�6`   	 . $��0��5:   #    .    AlternatingRowBackground
 �����
 .   .  .   . ��63   �� *Emails+5?        5A      $ PhoneNumberGrid��6/   $��5q�6$   $��Stretch=�6H   $��Stretch=�6f   $��1��5B   #    . 	 . 
 .   .  .   . ��63   �� *PhoneNumbers+5G      5H      5I      5M      � 5O   
   $��2��6    5P      �� 5Q      $	��300 �6#   �� 5R      $��* �6#    5U      �� 5V      $��35 �6    6.   �� 5W      $��30 �6    6.   �� 5X      $��30 �6    6.   �� 5Y      $
��auto �6    60   �� 5Z      $
��auto �6    60   .+�5]      �� $��0��6   $��7��6"   $��3��63   
���P��
���   �$��5q�6n    �� CornerRadius$ 5��6�   6�   �� 5^      $��FirstName :��6   $��0��6*   $��Right=�67   $��Center=�6S   �� 5_      $��Last Name :��6   $��1��6*   $��Right=�67   $	��Top=�6S   �� 5`      $��Date of Birth :��6   $��2��6.   $��Right=�6;   $	��Top=�6W   �� 5a      $��Emails :��6   $��3��6'   $��Right=�64   $	��Top=�6P   $��0,5,0,0q�6h   �� 5b      $��Phone Numbers :��6   $��4��6.   $��Right=�6;   $��0,5,0,0q�6W   $	��Top=�6h   �� 5d      -   5        $ txtFirstName��5f   �   $
��Left=�6:   $��0��6U   $��1��6b    �� TextWrapping$
 Wrap=�6r   $��Center=�6�   $��25��6�   $	��200��6�   $��0,5,0,0q�6�   ��5d      �� *CurrentContact.FirstName+$ TwoWay=� �� NotifyOnValidationError .  �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . .��5f   �   5h      �� 5i      -   5        $ txtLastName��5k   �   $
��Left=�67   $��1��6R   $��1��6_   $
 Wrap=�6o   $��Center=�6�   $��25��6�   $	��200��6�   ��5i      �� *CurrentContact.LastName+$ TwoWay=� . $ PropertyChanged=� . 5k   �   (  "System.Windows.Controls.DatePicker  5l      -   5          Name$ dpdob��5l   �   $
��Left=�6�   $��2��6�   $��1��6�   $��Center=�6�   $	��120��6�       SelectedDate  6   �� $  CurrentContact.DateofBirth�$ TwoWay=�
! �� Now" �� TargetNullValue#" Z! 6�   � 5q      $��3��6   $��1��6     5r      �� 5s      $��40 �6$   62   �� 5t      $��* �6$   61   .+�5w      �� $ 
Horizontal=�6   $��0��66   $��1��6D   $
��Left=�6U   .+�5x      �� -   5        $ txtEmail��5x   �   # �� 	MaxLength$# 13��6E   $
��Left=�6T   $��0��6o   $��1��6|   $
 Wrap=�6�   $��Center=�6�   $��25��6�   $	��220��6�   $��0,0,0,0q�6�   ��6   �� *
AddEmail+$ TwoWay=�.��6�   5z      �� 5{      $	��Add��6   $
��Left=�6+   $��Center=�6F   $��80��6a   $��0,0,0,0q�6�   $��25��6�   ��6l   �� $ �� ElementName$$ txtEmail��$
 Text���6�   �� *AddEmailCommand+6�   5|      �� 5�      -   5        % ��Name$% lstEmail��5�      $��1��6-   $��1��6:   $
��Left=�6J   $	��300��6e   $	��100��6q   $��0,5,0,10q�6~   ��6�   �� *CurrentContact.Emails+& �� View& 5�      �� 5�      .P�5�      �� $
��Name��6-   ' �� Width$	' 200��6;   ( �� DisplayMemberBinding( 6G   �� *Email+�� 5�      $�� ��6-   ) �� CellTemplate) 5�   "   �� 5�   &   .R�5�   *   �� * � ToolTip$* Delete��61   $��25��6B   $��25��6N   
������ ��6u   �� $$ lstEmail��$$ DataContext.DeleteEmailCommand�$ TwoWay=���5�   -   �� *Email+��5�   .   �� 5�   2   + �� ImageSource$+ Images\Delete1.png��6=   , j� Stretch$
, Fill=�6_   5�   +   5�   '   5�      5�      5�      5�      � 5�      $��4��6   $��1��6     5�      �� 5�      $��40 �6$   62   �� 5�      $��* �6$   61   .+�5�      �� $ 
Horizontal=�6   $��0��62   $��1��6@   $
��Left=�6Q   .+�5�      �� -   5        $ txtPhoneNumber��5�   �   $# 13��6K   $
��Left=�6Z   $��0��6u   $��1��6�   $
 Wrap=�6�   $��Center=�6�   $��25��6�   $	��220��6�   $��0,0,0,0q�6�   ��6   �� *AddPhoneNumber+$ TwoWay=�.��6  5�      �� 5�      $	��Add��6   $
��Left=�6'   $��Center=�6B   $��80��6]   $��0,0,0,0q�6�   $��25��6�   ��6h   �� $$ txtPhoneNumber��$
 Text���6�   �� *AddPhoneNumberCommand+6�   5�      �� 5�      -	   5        $% lstPhoneNumber��5�      $��1��6/   $
��Left=�6?   $	��300��6Z   $	��100��6f   $��0,0,0,10q�6s   $��1��6�   ��6�   �� *CurrentContact.PhoneNumbers+& 5�      �� 5�      .P�5�      �� $
��Name��6)   $	' 200��67   ( 6D   �� *PhoneNumber+�� 5�      $�� ��6)   ) 5�      �� 5�   "   .R�5�   &   �� $* Delete��6-   $��25��6>   $��25��6J   
������ ��6q   �� $$ lstPhoneNumber��$&  DataContext.DeletePhoneNoCommand�$ TwoWay=���6�   �� *PhoneNumber+��5�   *   �� 5�   .   $+ Images\Delete1.png��69   $
, Fill=�6Z   5�   '   5�   #   5�      5�      5�      5�      5�      �� 5�   
   $��3��6   $ 
Horizontal=�6"   $��Right=�6;   $��10q�6W   .+�5�      �� -
   5        - ��Name$- btnAdd��5�   f   $��Add New��6   $
��Left=�6'   $	��Top=�6B   $	��120��6Z   $��10,0,0,0q�5�   7   $��25��6I   ��6   �� *AddNewCommand+6I   �� 5�      -   5        $- 	btnUpdate��5�   c   $
��Save��6   $
��Left=�6$   $	��Top=�6?   $	��120��6W   $��10,0,0,0q�5�   R   $��25��6d   ��6   �� *SaveCommand+��65   �� 6d   �� 5�      $��Clear��6   $
��Left=�6%   $	��Top=�6@   $	��120��6X   $��10,0,0,0q�5�   7   $��25��6I   ��6   �� *ClearCommand+6W   5�      5�      5�      