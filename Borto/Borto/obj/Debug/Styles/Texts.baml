   M S B A M L   `   `   `  ����@  <Borto, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:BortoBorto  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType   
HeaderText  BaseTextBlockStyle �� BasedOn �� Property  ForegroundMainBrush �� Value  	BaseStyle  FontSizeLarge  LatoRegular  WordBlueBrush �� 
TargetType ��Name J� SnapsToDevicePixels ��Name ��Name	 J� IsHitTestVisible

 � Tag  LatoThin �� Padding  ForegroundVeryDarkBrush �� Triggers �� Binding �� RelativeSource �� Mode �� Value �� Triggers P� Property P� Value �� 
TargetName�    �Borto.BaseAttachedProperty`2[[Borto.MonitorPasswordProperty, Borto, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null],[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] �� 	Converter(   "Borto.BooleanToVisibilityConverter 	 SpinningText 
 FontAwesome �� 	Resources  Key �� TargetProperty W� From	 W� To g� Duration g� RepeatBehavior �� Self �� Path N� EnterActions ��Name  Spin  N� ExitActions! �� BeginStoryboardName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      localclr-namespace:Borto  5      %"  &	        7  7  '�� �     7  7  7  7  7  7  'G� �    7  7  7  7  7  7  &		 %
    7  7 
 7  �� 5      "  ��6   8   .�5   
   ��  � ��8  6'   �� 5   
    � ��$ Center=�6.   �� 5   
    � ��$ Center=�60   �� 5	   
    � ��$	 0 6q�6#   5
      �� 5      "  ��6   8   .�5   
   ��  � ��8  6%   �� 5   
    � ��8  6'   �� 5   
    � ��$ 10q�6$   �� 5   
    � ��$ 0 5 0 5q�6#   �� 5   
    � ��8  6(   �� 5   
    � ��$ 0 0 0 1q�6,   �� 5   
    � �� 5      �� 5      " ��6   .R�5      � .+�5      �� $ border��6   #��z��5      #��z��5      #��z��5       . ._�5       �� $ PART_ContentHost��6#   |�.  $��Hidden=�6O   $��Hidden=�6v   5!      �� 5#      $ placeholder��5%   $   	 .  #��z
 5$   $   8�� # z��5'   $   $��Center=�5(   $   #��z��5)   $   8�� ��5-      �� 5.   "   "  ��6(   .�5/   &   ��  � y�$ 	Collapsed=�6C    50   &   �� 51   *    66   �� *Text+ �� $ TemplatedParent=�  6�   .a�52   .   ��  � y�$ Visible=�6K   53   +   55   #   57      5:       5<      P� 5=       � {� .  . �5>      �� $ border��64    �@J�Opacity$
 0.56Q�6H   5?      P� 5@       �@J�IsMouseOver . . �5A      �� $ border��68    � �� �	#FF7EB4EA6L   5B      P� 5C       �@J�IsKeyboardFocused . . �5D      �� $ border��68    � �� �	#FF569DE56L   5E      5G      5I      5J      �� 5L      "  G�6   8   .�5N   
   ��  � ��8  6%   �� 5O   
    � ��8  6'   �� 5P   
    � ��$ 10q�6$   �� 5Q   
    � ��$ 0 5 0 5q�6#   �� 5R   
    � ��8  6(   �� 5S   
    � ��$ 0 0 0 1q�6,   �� 5U   
    �@  Value . 6@   �� 5W   
    � �� 5X      �� 5Y      " G�6"   .R�5[      � .+�5\      �� $ border��6!   #��z��5]      #��z��5^      #��z��5_       . ._�5a      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5b      �� 5d      $ placeholder��5f   $   	 .  #��z
 5e   $   8�� # z��5h   $   $��Center=�5j   $   #��z��5k   $   8�� y�5i   $   �� *local:HasTextProperty.Value+   5p      5s       5u      P� 5v       � {� .  . �5w      �� $ border��68    �@J�Opacity$
 0.56Q�6L   5x      P� 5y       �@J�IsMouseOver . . �5z      �� $ border��6<    � �� �	#FF7EB4EA6P   5{      P� 5|       �@J�IsKeyboardFocused . . �5}      �� $ border��6<    � �� �	#FF569DE56P   5~      5�      5�      5�      �� 5�      "  ��6   8   .�5�   
   ��  � ��8  6'   �� 5�   
    � ��$	 ��6!   �� 5�   
    �@J�RenderTransformOrigin$ 0.5,0.5&�62   �� 5�   
    � z� 5�      �� 5�      5�       5�   
   ���� 5�      Spin .��5�      W� $9 3(UIElement.RenderTransform).(RotateTransform.Angle)�5�      $ 0X�5�      $	 360X�5�      $ 0:0:2D�5�      $ Forever��5�      5�      5�       5�   
   �� 5�       6   �� # Z $ 	IsVisible� True6k    5�      �� 5�      $ SpinStoryBoard��6&   8�� 6=     5�      �� 5�      $! SpinStoryBoard��6)   5�      5�      5�      