   M S B A M L   `   `   `  ���� F  BWPFContacts, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPFContactsWPFContacts  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem     WPFContacts.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:WPFContacts     9System&clr-namespace:System;assembly=mscorlib       � Title$  
MainWindow��$	��800��$	��800��.���  � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��auto ��� $��* �.+��� .+��� -    ��Name$ 	btnSearch��$��Search��$
��Left=�$	��Top=�$	��120��$��10,0,0,0q�$��25������ *SearchCommand+�� -    �� SelectionMode$ Multiple=�&   System.Windows.Controls.DataGrid  -     Name$ grdContacts��$��1��$��Stretch=�$��Stretch=�   AutoGenerateColumns .     
IsReadOnly .    CanUserDeleteRows .     CanUserResizeColumns . 	   CanUserAddRows	 .  
   CanUserReorderColumns
 .  �� SelectedItem �� *SelectedContact+ �� Mode$ TwoWay=�����  �� Path$ ContactCollection�$ TwoWay=�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ *    Header$ 
First Name��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	FirstName+  $ * $ 	Last Name�� �� *
LastName+  $ * $	 DOB�� �� *DateofBirth+ �� StringFormat$ {0:dd.MM.yyyy HH:mm:ss}��   RowDetailsTemplate �� .R�� 
��� E�� � ColumnDefinitions �� $��* ��� $��* �.+�  $ 	EmailGrid��$��5q�$��Stretch=�$��Stretch=� . $��0�� .    AlternatingRowBackground
 ����� .   . 	 .  
 . ���� *Emails+  $ PhoneNumberGrid��$��5q�$��Stretch=�$��Stretch=�$��1�� .  .  .   . 	 .  
 . ���� *PhoneNumbers+� $��2�� �� $	��300 ��� $��* � �� $��30 ��� $��30 ��� $��30 ��� $
��auto ��� $
��auto �.+��� $��FirstName :��$��0��$��Right=�$	��Top=��� $��Last Name :��$��1��$��Right=�$	��Top=��� $��Date of Birth :��$��2��$��Right=�$	��Top=��� $��Emails :��$��3��$��Right=�$	��Top=��� $��Phone Numbers :��$��4��$��Right=�$	��Top=��� -    ��Name$ txtFirstName��$
��Left=�$��0��$��1�� �� TextWrapping$
 Wrap=�$��Center=�$	��200������ *CurrentContact.FirstName+$ TwoWay=� �� NotifyOnValidationError .  �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . .���� -   $ txtLastName��$
��Left=�$��1��$��1��$
 Wrap=�$��Center=�$	��200������ *CurrentContact.LastName+$ TwoWay=� . $ PropertyChanged=� . (  "System.Windows.Controls.DatePicker  -     Name$ dpdob��$
��Left=�$��2��$��1��$��Center=�$	��120��   SelectedDate �� $  CurrentContact.DateofBirth�$ TwoWay=�
 �� Now �� TargetNullValue# Z �� -    ��Name$ lstEmail��$��3��$��1��$
��Left=�$	��300��$	��100��$��0,5,0,10q����� *CurrentContact.Emails+  �� View  �� .P��� $
��Name��! �� Width$	! 200��" �� DisplayMemberBinding" �� *Email+�� $�� ��# �� CellTemplate# �� .R��� $ � ToolTip$$ Delete��$��25��$��25��
������ ���� % �� ElementName$% lstEmail��$$ DataContext.DeleteEmailCommand�$ TwoWay=����� *Email+���� & �� ImageSource$& Images\Delete1.png��' j� Stretch$
' Fill=��� -   $ lstPhoneNumber��$��4��$
��Left=�$	��300��$	��100��$��0,0,0,10q�$��1������ *CurrentContact.PhoneNumbers+  �� .P��� $
��Name��$	! 200��" �� *PhoneNumber+�� $�� ��# �� .R��� $$ Delete��$��25��$��25��
������ ���� $% lstPhoneNumber��$&  DataContext.DeletePhoneNoCommand�$ TwoWay=����� *PhoneNumber+���� $& Images\Delete1.png��$
' Fill=��� $��3��( �� Orientation$( 
Horizontal=�$��Right=�.+��� -	   $ btnAdd��$��Add New��$
��Left=�$	��Top=�$	��120��$��10,0,0,0q�$��25������ *
AddCommand+�� -
   $ 	btnUpdate��$��Update��$
��Left=�$	��Top=�$	��120��$��10,0,0,0q�$��25������ *UpdateCommand+���� �� $��Clear��$
��Left=�$	��Top=�$	��120��$��10,0,0,0q�$��25������ *ClearCommand+