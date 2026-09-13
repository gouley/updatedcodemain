using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        List<double> notes = new List<double>();
        Console.WriteLine("Entrez les notes de français des élèves (sur 20). Tapez 'Q' pour terminer.");

        while (true)
        {
            Console.Write("Note : ");
            string input = Console.ReadLine();

            // Vérifie si l'utilisateur veut quitter
            if (string.IsNullOrWhiteSpace(input) || input.Equals("Q", StringComparison.OrdinalIgnoreCase))
            {
                break;
            }

            // Tentative de conversion en nombre
            if (double.TryParse(input, out double note))
            {
                // Vérifie que la note est entre 0 et 20 inclus
                if (note >= 0 && note <= 20)
                {
                    notes.Add(note);
                }
                else
                {
                    Console.WriteLine("Erreur : La note doit être comprise entre 0 et 20. Veuillez réessayer.");
                }
            }
            else
            {
                Console.WriteLine("Erreur : Veuillez entrer un nombre valide ou 'Q' pour quitter.");
            }
        }

        // Calcul et affichage de la moyenne
        if (notes.Count > 0)
        {
            double moyenne = notes.Average();
            Console.WriteLine($"\nNombre de notes saisies : {notes.Count}");
            Console.WriteLine($"Moyenne de la classe : {moyenne:F2}/20");
        }
        else
        {
            Console.WriteLine("\nAucune note n'a été saisie.");
        }

        Console.WriteLine("Appuyez sur une touche pour quitter...");
        Console.ReadKey();
    }
}