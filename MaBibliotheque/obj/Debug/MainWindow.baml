   M S B A M L   `   `   `  ����I  EMaBibliotheque, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:MaBibliothequeMaBibliotheque  5   	       MaBibliotheque.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:MaBibliotheque     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � DataContext 5
      ,   &MaBibliotheque.FicheEtudiantsViewModel  5   
   6*   .��5      �  � 	Resources 5   
    �� 
TargetType �� Property �� Value��%`  '��       '�� �     �� 5      " ��6   .�5      ��  � ��$ Center=�68   5      �� 5       � ��$ Center=�66   5      5      �� 5      " ��6   .�5      ��  � ��$ Stretch=�68   5      �� 5       � ��$ Center=�66   5      �� 5       �@��TextAlignment$ Center=�62   5      5      5       � RowDefinitions 5   
   �� 5      6   �� 5       6   �� 5!      6   �� 5"      6   �� 5#      6   �� 5$      6    � ColumnDefinitions 5&   
   �� 5'      �� 5(      �� 5)      $��5 �6   �� 5*      �� 5+      �� 5,      $��5 �6   �� 5-      $��2* �6   �� 5.      .+�50   
   �� $��0��6   $��0��6   $��2��6-   $��Center=�6A   $��Center=�6^   .��6y   Interface d'édition6�   �� 51   
   $��0��6   $��3��6   $��2��6-   $��Center=�6A   $��Center=�6^   .��6y   Fiche Client6�   �� 52   
   $��1��6   $��0��6   .��6-   Nom :64   �� 53   
   $��2��6   $��0��6   .��6-   	Prénom :67   �� 54   
   $��3��6   $��0��6   .��6-   Âge :64   �� 55   
   $��2��6   $��5��6$   
���   �6D   �� 56   
   $��1��6   $��1��6   ��6/   �� *FicheEtudiantSelectionne.Nom+ �� Mode$ TwoWay=�6l   �� 57   
   $��2��6   $��1��6   ��6/   �� *!FicheEtudiantSelectionne.Prenom+$ TwoWay=�6o   �� 58   
   $��3��6   $��1��6   ��6/   �� *FicheEtudiantSelectionne.Age+$ TwoWay=�6l   �� 59   
   $��1��6   $��3��6   .��6-   Nom :64   �� 5:   
   $��2��6   $��3��6   .��6-   	Prénom :67   �� 5;   
   $��3��6   $��3��6   .��6-   Âge :64   �� 5<   
   $��1��6   $��4��6   ��6-   �� *FicheEtudiantSelectionne.Nom+6`   �� 5=   
   $��2��6   $��4��6   ��6-   �� *!FicheEtudiantSelectionne.Prenom+6c   �� 5>   
   $��3��6   $��4��6   ��6-   �� *FicheEtudiantSelectionne.Age+6`   �� 5?   
   $��5��6�   $��5��6�   ��6   �� *(&RemiseAZeroLaFicheEtudiantsSelectionne+��6L   �� *FicheEtudiantSelectionne+.��6�   RAZ6�   �� 5@   
   $��5��6   $��6��6$   
���   �6D   �� 5A   
   $��6��6   $��0��6    $��2��6-   .��6A   Fiches Clients6Q   �� 5B   
   -   5        	 ��Name$	 listeDeFichesClients��5B      $��6��60   $��5��6@   $��1��6Q   ��6^   �� *Fiches+��5C      �� 5D      .R�5E      �� 
 �� Orientation$
 
Horizontal=�6!   .+�5F      �� $��- ��6    6/   �� 5G      ��6    �� *Nom+6:   �� 5H      ��6    �� *Prenom+6=   �� 5I      ��6    �� *Age+6:   �� 5J      $	��ans��6    60   5K      5L      5N      �� 5O   
   $��7��6H   $��1��6X   ��6   �� *$"AjouterUnEtudiantAMaFicheEtudiants+.��6f   	Ajouter6o   �� 5P   
   $��7��6�   $��2��6�   ��6   �� *ModifierUnEtudiant+��68   ��  �� ElementName$ listeDeFichesClients�� �� Path$ SelectedItem�.��6�   Editer6�   �� 5Q   
   $��7��6�   $��3��6�   ��6   �� *RetirerUnEtudiant+��67   �� $ listeDeFichesClients��$ SelectedItem�.��6�   	Retirer6�   5R      5S      