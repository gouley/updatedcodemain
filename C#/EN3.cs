/* declaration des variables*/
int j = 5;
float heures= 0F;
decimal salaire = 0M;
decimal tauxhoraire =0;
switch ()
{
case "Lundi"
:
    Console.WriteLine("Entrez le nombre d'heures travaillées pour le lundi :");
    heures = float.Parse(Console.ReadLine());
    j++;
    salaire += (decimal)heures * tauxhoraire;
    break;;
case "Mardi"
:
    Console.WriteLine("Entrez le nombre d'heures travaillées pour le mardi : ");
    heures = float.Parse(Console.ReadLine());
    j++;
    salaire += (decimal)heures * tauxhoraire;
    break;;
case "Mercredi"
:
    Console.WriteLine("Entrez le nombre d'heures travaillées pour le mercredi : ");
    heures = float.Parse(Console.ReadLine());
    j++;
    salaire += (decimal)heures * tauxhoraire;
    break;;
case "Jeudi"
:
    Console.WriteLine("Entrez le nombre d'heures travaillées pour le jeudi : ");
    heures = float.Parse(Console.ReadLine());
    j++;
    salaire += (decimal)heures * tauxhoraire;
    break;;
case "Vendredi"
:
    Console.WriteLine("Entrez le nombre d'heures travaillées pour le vendredi : ");
    heures = float.Parse(Console.ReadLine());
    j++;
    salaire += (decimal)heures * tauxhoraire;   
    break;;
}
for(int i = 1 ; i <= j ; i++)
{
    Console.WriteLine(case(i));
    tauxhoraire = decimal.Parse(Console.ReadLine());
}