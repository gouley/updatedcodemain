//Raphaël Coelho 2025 /2026 La Vinotière
using System;
class Program
{
    static void Main()
    {
        // Déclaration des variables
        int nombreNuit = 0;
        int nombrePersonne = 0;
        decimal prixTotal = 0;
        decimal montantReduction = 0;
        int Taux = 0;

        // Saisie du nombre de nuits
        Console.Write("Entrez le nombre de nuits : ");
        nombreNuit = int.Parse(Console.ReadLine());

        // Saisie du nombre de personnes
        Console.Write("Entrez le nombre de personnes : ");
        nombrePersonne = int.Parse(Console.ReadLine());

        // Calcul du prix total avant réduction
        if (nombrePersonne < 3)
        {
            prixTotal = nombreNuit * 2; 
        }
        else if (nombrePersonne == 2)
        {
            prixTotal = nombreNuit * 150;
        }
        else if (nombrePersonne >= 3)
        {
            prixTotal = nombreNuit * 180;
        }
    } 
}