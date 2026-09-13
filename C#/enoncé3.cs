using System;

class Program
{
    static void Main()
    {
        Console.Write("Entrez le prix total hors TVA (€) : ");
        if (decimal.TryParse(Console.ReadLine(), out decimal prixHT))
        {
            decimal remise = prixHT >= 500 ? 0.25m : 0m;
            decimal prixApresRemise = prixHT * (1 - remise);
            decimal tva = prixApresRemise * 0.20m;
            decimal prixTTC = prixApresRemise + tva;

            Console.WriteLine($"Prix après remise : {prixApresRemise:F2} €");
            Console.WriteLine($"Montant de la TVA (20%) : {tva:F2} €");
            Console.WriteLine($"Montant TTC à payer : {prixTTC:F2} €");
        }
        else
        {
            Console.WriteLine("Entrée invalide.");
        }
    }
}