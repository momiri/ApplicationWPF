using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace MaBibliotheque
{
    public class EtudiantClass : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public void NotifyPropertyChanged([CallerMemberName] string str = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(str));
            }
        }

        private string nom;
        public string Nom
        {
            get
            {
                return nom;
            }
            set
            {
                if (value != nom)
                {
                    nom = value;
                    NotifyPropertyChanged();
                }
            }
        }
        private string prenom;
        public string Prenom
        {
            get
            {
                return prenom;
            }
            set
            {
                if (value != prenom)
                {
                    prenom = value;
                    NotifyPropertyChanged();
                }
            }
        }
        private int age;
        public int Age {
            get
            {
                return age;
            }
            set
            {
                if(value != age)
                {
                    age = value;
                    NotifyPropertyChanged();
                }
            }
        }
    }
}
