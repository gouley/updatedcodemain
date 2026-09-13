int position = 0;
int plus_grand = 0;
int chiffre_propose = 0;
int temp = 0;

while (chiffre_propose != 0)
{
  Console.WriteLine("Proposez un chiffre (0 pour arrêter)");
  chiffre_propose = int.Parse(Console.ReadLine());

  if (chiffre_propose != 0 && chiffre_propose > plus_grand)
  {
      plus_grand = chiffre_propose;
      position += 1;
      temp = position;
  }

  else
  {
      position += 1;
  }
}

Console.WriteLine("Plus grand chiffre proposé : " + plus_grand + "; et sa position : " + temp);

Console.ReadKey();
