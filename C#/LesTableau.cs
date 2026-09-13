using System;

class LesTableau
{
    static void Main(string[] args)
    {
        String[] tabDept = {"Cher", "Eure et Loir", "Indre", "Indre et Loire", "Loir et Cher", "Loiret" } ;
        int[] tabPrecip = {122, 230, 50, 170, 185, 140 } ;
        int[] tabCulture = {2, 1, 2, 0, 1, 0 } ;
        int[] tabSeuil = {130, 150, 70 } ;
        string nom ;
        int i ;
        int precipitation ;
        int culture ;
        /* saisie du département*/
        Console.WriteLine ("Entrez le nom du département ") ;
        nom = Console.ReadLine() ;

        // recherche du département (insensible à la casse)
        i = -1;
        for (int idx = 0; idx < tabDept.Length; idx++)
        {
            if (string.Equals(tabDept[idx], nom, StringComparison.OrdinalIgnoreCase))
            {
                i = idx;
                break;
            }
        }

        if (i == -1)
        {
            Console.WriteLine("Département non trouvé.");
            return;
        }

        precipitation = tabPrecip[i];
        culture = tabCulture[i];

        Console.WriteLine($"Département : {tabDept[i]}");
        Console.WriteLine($"Précipitations relevées : {precipitation} mm");
        Console.WriteLine($"Seuil pour la culture (code {culture}) : {tabSeuil[culture]} mm");

if (precipitation < tabSeuil[culture])
    Console.WriteLine("Le département est sinistré.");
else
    Console.WriteLine("Le département n'est pas sinistré.");
    }
}