   M S B A M L   `   `   `  ����D  @Semaphore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Semap.ViewsSemap.Views  5   	       Semap.Views.MainView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Semap.Views     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1*cmd http://www.galasoft.ch/mvvmlight  6N     � Title$  MainView��5	   	   $	��450��6   $	��800��6'    � 	Resources 5
         updown_button_style �� 
TargetType ��Name  ThemeBrushDark  
ThemeBrush �� CornerRadius ��Name �� Triggers P� Property P� Value	 �� 
TargetName  ThemeBrushActive
 �� Value �� Property �� 
TargetType��%�  &	        '�� �    7   �� 5   
   " ��66   .R�5      �� $ br��6   $��0q�6!   #���  65   #���  5      $ 0��6G   ._�5      �� $ cp��6#   #��z��6/   #��z��5   +   #��z��5   +   5       5      P� 5       �@J�IsMouseOver . . �5      �� $	 br��6   #
 �  6C    � ��5      P� 5       � {� .  . �5      �� $	 br��6    � ��

 �����6C   5      5      �� 5   
   " ��6   .�5      ��  � ��8
   6)   5      5      .��5       �  � ColumnDefinitions 5!   
   �� 5"      6!   �� 5#      6!   �� 5$      6!   .+�5&   
   �� $��Center=�6   .+�5'      �� $��Center=�6   $��20(�61   $
��Bold"�6?   .��6Q   Working Threads6b   �� 5(      
���   �$��1q�6   $	��220��6�   $	��300��6�   ��6   �� *
WrkThreads+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=���5)      �� 5*      .R�5+      ��  �� Orientation$ 
Horizontal=�6%   .+�5,      �� .��6$   Thread6,   �� 5-      ��6&   �� *Name+$ PropertyChanged=�$ OneTime=�.��6o   5.      5/      50      52      �� 53      $��Center=�6   $��20(�61   $
��Bold"�6?   .��6Q   Places in Semaphore6f   �� 54       J� OpacityMask 55      !� 56       !� Visual 57      �� 58      
���   � J� SnapsToDevicePixels . $ 4��59      ��5:      �� *ActualWidth+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ BorderL���5;      �� *ActualHeight+ �� *FindAncestor+$ BorderL�5=      ._�5?      � $��40��6    � RowDefinitions 5@      �� 5A      �� 5B       5D      �� 5E      �� 5F      $��22 �6+   .+�5H      �� -   5         ��Name$ tb_main��5H      $��Medium"�6I   $��14(�6]   $��Center=�6k   $	��5,1q�6�   $��0��5I      $��2��6&   ��67   �� *Pcount+$ PropertyChanged=�$ TwoWay=�6�   �� 5J      -   5         ��Name$ cmdUp��5J      $��1��6F   $��0��6V   $
��auto��6c   $
��auto��6p   ��6~   �� *	UpCommand+��5K      F� 5L      $��Center=�6#   $��Center=�6@   
���   �"���� 	=     �     	= � z  	= 	6h   5N      �� 5O      -   5        $ cmdDown��5O      $��1��6H   $��1��6X   $
��auto��6e   $
��auto��6r   ��6�   �� *DownCommand+��5P      F� 5Q      $��Center=�6#   $��Center=�6@   
���   �"����        � z     � 	=  	= 	6h   5S      �� 5T      
������� J� IsHitTestVisible .  $��1q�6I   $ 4��6]   $��2��6n   $��2��5U       �� Padding$ 0q�6)   $��0q�65   5V      5W      5X      �� 5Y   
   $��1��6   $��Center=�6%   .+�5Z      �� $��Center=�6   $��20(�62   $
��Bold"�6@   .��6R   Waiting Threads6c   �� 5[      
���   �$��1q�6�   $	��220��6�   $	��300��6�   ��6   �� *WaitThreads+$ PropertyChanged=�$ TwoWay=���5\      �� 5]      .R�5^      �� $ 
Horizontal=�6%   .+�5_      �� .��6$   Thread6,   �� 5`      ��6&   �� *Name+$ PropertyChanged=�$ OneTime=�6q   5a      5b      5d      5e      �� 5f   
   $��2��6   $��Center=�6%   .+�5g      �� $��Center=�6   $��20(�61   $
��Bold"�6?   .��6Q   Created Threads6b   �� 5h      -   5        $��crlist��5h      
���   �$��1q�6�   $	��220��6�   $	��300��6  $��0,0,0,30q�6  ��6$   �� *	CrThreads+$ PropertyChanged=�$ TwoWay=� �� SelectedItem 6x   �� *	Crselitem+$ PropertyChanged=�$ TwoWay=���5i      �� 5j      .R�5k      �� $ 
Horizontal=�6%   $	��220��6?    J� InputBindings 5l      d� 5m   "    d� Gesture$ LeftDoubleClicka�6/    �� Command 5n   #   ��  �� $ WindowL� �� Path$# DataContext.CrDblClickCommand�  �� CommandParameter  6�   �� .+�5p      �� .��6$   Thread6,   �� 5q      ��6'   �� *Name+$ PropertyChanged=�$ OneTime=�.��6p   5r      5s      5t      5v      �� 5w      $	��150��6   $��40��6!   $��20(�6-   $
��Bold"�6;   ��6M   �� *CreateCommand+.��6o   Create6w   5x      5y      5z      