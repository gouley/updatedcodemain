using System;

class Program
{
    static void Main()
    {
        Console.Write("Entrez le premier nombre entier : ");
        int n1 = int.Parse(Console.ReadLine());

        Console.Write("Entrez le deuxième nombre entier : ");
        int n2 = int.Parse(Console.ReadLine());

        if (n1 == n2)
        {
            Console.WriteLine("Le nombre 1 est égal au nombre 2.");
        }
        else if (n1 > n2)
        {
            Console.WriteLine("Le nombre 1 est supérieur au nombre 2.");
        }
        else
        {
            Console.WriteLine("Le nombre 2 est supérieur au nombre 1.");
        }
    }
}