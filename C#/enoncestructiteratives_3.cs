// Définition des variables

int tauxHoraire;
int heure = 0;
float paye;
int i;


Console.WriteLine("Entrez votre taux horaire");
tauxHoraire = int.Parse(Console.ReadLine());

// Boucle itérative for

for(i=1; i<6; i++)
{
  switch(i) {

  case 1 :
    Console.WriteLine("Entrez le nombre d'heure effectués Lundi");
    heure += int.Parse(Console.ReadLine());
    break;
  case 2 :
    Console.WriteLine("Entrez le nombre d'heure effectués Mardi");
    heure += int.Parse(Console.ReadLine());
    break;
  case 3 :
    Console.WriteLine("Entrez le nombre d'heure effectués Mercredi");
    heure += int.Parse(Console.ReadLine());
    break;
  case 4 :
    Console.WriteLine("Entrez le nombre d'heure effectués Jeudi");
    heure += int.Parse(Console.ReadLine());
    break;
  case 5 :
    Console.WriteLine("Entrez le nombre d'heure effectués Vendredi");
    heure += int.Parse(Console.ReadLine());
    break;

 }
}

// Calcul

paye = heure * tauxHoraire;

// Affichage final

Console.WriteLine("Votre paye hebdomadaire s'élève à :" + paye);

Console.ReadKey();



