using System;


namespace Vinotiere
{
    class Program
    {
        static void Main(string[] args)
        {
            //Déclaration de variables
            int nbPersonnes = 0;
            int nbNuitees = 0;
            int prixNuitee = 120;
            decimal montantReduc = 0;
            decimal tauxReduction = 0;
            decimal montantFacture = 0;



            //Saisie des données
            Console.WriteLine("Entrez le nombre de personnes de la famille");
            nbPersonnes = Int32.Parse(Console.ReadLine());
            Console.WriteLine("Entrez le nombre de nuitées");
            nbNuitees = Int32.Parse(Console.ReadLine());
            Console.WriteLine("Entrez le montant total facturé");
            montantFacture = Decimal.Parse(Console.ReadLine());

            //Nombre de nuitées recalculé (à écrire)
            if (nbPersonnes <= 2)
            {
                nbNuitees = nbNuitees * 2;
            }
            else if (nbPersonnes <= 4)
            {
                nbNuitees = nbNuitees * 3;
            }
            else if (nbPersonnes > 4)
            {
                nbNuitees = nbNuitees * 4;
            }

            //Calcul du montant total 
            montantFacture = nbNuitees * prixNuitee;
            //Détermination du taux de réduction (à écrire)
            if (nbNuitees > 5)
            {
                if (nbNuitees <= 8)
                {
                    tauxReduction = 0.20m;
                }
                else if (nbNuitees <= 14)
                {
                    tauxReduction = 0.25m;
                }
                else if (nbNuitees > 14)
                {
                    tauxReduction = 0.30m;
                }
            }

            //Calcul du montant de la réduction (à écrire)
            if (montantFacture >= 1000)
            {
                montantFacture = montantfacture * 0.75m;
            }

            //affichage du montant réduction
                Console.WriteLine("Vous avez obtenu un taux de réduction de : " + tauxReduction);
            Console.WriteLine("le montant de la réduction est de " + montantReduc);
            Console.WriteLine("Le montant total facturé est de " + montantFacture);
            Console.ReadKey();
        }
    }
}
