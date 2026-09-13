using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Enonce1
{
    class Enonce1
    {
        static void Main(string[] args)
        {
            // Déclaration des variables
            int temperature;

            // Saisie de la température
            Console.WriteLine("Quelle est la temperature ?");
            temperature = Int32.Parse(Console.ReadLine());

            // Affichage du sport en fonction de la température
            if (temperature > 35)
            {
                Console.WriteLine("Pratiquez la natation");
            }
            if (temperature > 20 && temperature <= 35)
            {
                Console.WriteLine("Pratiquez le tennis");
            }
            if (temperature > 0 && temperature <= 20)
            {
                Console.WriteLine("Pratiquez le golf");
            }
            if (temperature > -20 && temperature <= 0)
            {
                Console.WriteLine("Pratiquez le ski");
            }
            if (temperature <= -20)
            {
                Console.WriteLine("Pratiquez le ping-pong");
                Console.WriteLine("Vous pratiquez aussi ");
            }
            Console.ReadKey();
        }
    }
}
