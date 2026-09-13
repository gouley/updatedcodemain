using System;

namespace Basics
{
    class Program
    {
        // Entry point of the program
        static void Main(string[] args)
        {
            // Variables
            int number = 10;
            double price = 19.99;
            string name = "Touraine";
            bool isActive = true;

            // Output
            Console.WriteLine("Hello, " + name);

            // Conditional
            if (isActive)
            {
                Console.WriteLine("Active!");
            }
            else
            {
                Console.WriteLine("Inactive!");
            }

            // Loop
            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("Count: " + i);
            }

            // Array
            int[] numbers = { 1, 2, 3, 4, 5 };

            // Method call
            PrintMessage("Bienvenue en Touraine!");

            // Class usage
            Person person = new Person("Alice", 25);
            person.SayHello();
        }

        // Method definition
        static void PrintMessage(string message)
        {
            Console.WriteLine(message);
        }
    }

    // Class definition
    class Person
    {
        public string Name;
        public int Age;

        public Person(string name, int age)
        {
            Name = name;
            Age = age;
        }

        public void SayHello()
        {
            Console.WriteLine("Bonjour, je m'appelle " + Name + " et j'ai " + Age + " ans.");
        }
    }
}