using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace MaBibliotheque
{
    public class FicheEtudiantsViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public void NotifyPropertyChanged([CallerMemberName] string str = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(str));
            }
        }

        private ObservableCollection<EtudiantClass> fiches;
        public ObservableCollection<EtudiantClass> Fiches //equivalent au notifyPropertyChanged mais pour les enssembles des elements (object par exemple) ça capte un changement 
        {
            get
            {
                return fiches;
            }
            set
            {
                if (value != fiches)
                {
                    fiches = value;
                    NotifyPropertyChanged();
                }
            }
        }

        private EtudiantClass ficheEtudiantSelectionne;
        public EtudiantClass FicheEtudiantSelectionne {
            get
            {
                return ficheEtudiantSelectionne;
            }
            set
            {
                if (value != ficheEtudiantSelectionne)
                {
                    ficheEtudiantSelectionne = value;
                    NotifyPropertyChanged();
                }
            }
        }

        public FicheEtudiantsViewModel()
        {
            Fiches = new ObservableCollection<EtudiantClass>();
            FicheEtudiantSelectionne = new EtudiantClass()
            {
                Nom = "OMIRI",
                Prenom = "Mohamed",
                Age = 26
            };

            Fiches.Add(FicheEtudiantSelectionne);
        }

        private ICommand remiseAZeroLaFicheEtudiantsSelectionne = new RelayCommand<EtudiantClass>((etudiant) =>
        {
            etudiant.Nom = "";
            etudiant.Prenom = "";
            etudiant.Age = 0;
        });
        public ICommand RemiseAZeroLaFicheEtudiantsSelectionne { 
            get => remiseAZeroLaFicheEtudiantsSelectionne;  
        }


        private ICommand ajouterUnEtudiantAMaFicheEtudiants;
        public ICommand AjouterUnEtudiantAMaFicheEtudiants {
            get
            {
                if(ajouterUnEtudiantAMaFicheEtudiants == null)
                {
                    ajouterUnEtudiantAMaFicheEtudiants = new RelayCommand<EtudiantClass>((etudiant) => Fiches.Add(new EtudiantClass()));

                    using (var entities = new MaPremierBDDEntities())
                    {
                        var etudiant1 = new Etudiant()
                        {
                            Nom = "PS",
                            Prenom = "Mathilde",
                            Age = 21
                        };
                        entities.Etudiants.Add(etudiant1);
                        entities.SaveChanges();

                        foreach (var etudiant in entities.Etudiants.Where((etudiant) => etudiant.Age > 20))
                        {
                            Console.WriteLine($"Nom : {etudiant.Nom}, Prénom : {etudiant.Prenom}, Âge : {etudiant.Age}");

                        }
                    }

                }
                return ajouterUnEtudiantAMaFicheEtudiants;
            } 
        }


        private ICommand modifierUnEtudiant;
        public ICommand ModifierUnEtudiant {
            get
            {
                if(modifierUnEtudiant == null)
                {
                    modifierUnEtudiant = new RelayCommand<EtudiantClass>((etudiant) => FicheEtudiantSelectionne = etudiant);
                }
                return modifierUnEtudiant;
            }
        }


        private ICommand retirerUnEtudiant;
        public ICommand RetirerUnEtudiant {
            get
            {
                if (retirerUnEtudiant == null)
                {
                    retirerUnEtudiant = new RelayCommand<EtudiantClass>((etudiant) => Fiches.Remove(etudiant));
                }
                return retirerUnEtudiant;
            }
        }


    }
}
