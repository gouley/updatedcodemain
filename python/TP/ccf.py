def analyze(n):
    div = [i for i in range(1, n) if n % i == 0]
    s = sum(div)
    if s < n: cls = "DÉFICIENT"
    elif s == n: cls = "PARFAIT"
    else: cls = "ABONDANT"
    return cls, s, div

while True:
    try:
        num = int(input("Veuillez entrer un nombre positif (ou 0 pour quitter): "))
        
        if num == 0:
            print("Au revoir!")
            break
        
        if num < 0:
            print("Erreur: Veuillez entrer un nombre positif!")
            continue
        
        cls, s, div = analyze(num)
        print("\n" + "="*60)
        print(f"Analyse du nombre: {num}")
        print("="*60)
        print(f"\nDiviseurs propres de {num}: {div}")
        print(f"Somme des diviseurs: {' + '.join(map(str, div))} = {s}")
        print(f"\nRésultat: Le nombre {num} est {cls}")
        print("="*60 + "\n")
    
    except ValueError:
        print("Erreur: Veuillez entrer un nombre valide!")
