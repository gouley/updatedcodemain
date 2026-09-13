def afficher_tableau(tab):
    for ligne in tab:
        print(ligne)
def so_col(tab, j):
    somme = 0
    for i in range(len(tab)):
        somme += tab[i][j]
    return somme
def magique(tab):
    n = len(tab)

    # somme de référence (première ligne)
    somme_ref = sum(tab[0])

    # vérifier lignes
    for ligne in tab:
        if sum(ligne) != somme_ref:
            return False

    # vérifier colonnes
    for j in range(n):
        if so_col(tab, j) != somme_ref:
            return False

    # diagonale principale
    diag1 = 0
    for i in range(n):
        diag1 += tab[i][i]

    # diagonale secondaire
    diag2 = 0
    for i in range(n):
        diag2 += tab[i][n - 1 - i]

    if diag1 != somme_ref or diag2 != somme_ref:
        return False

    return True
def redondance(liste, j):
    compteur = 0
    for valeur in liste:
        if valeur == j:
            compteur += 1
    return compteur > 1
import random

def neuf_entiers():
    liste = list(range(1, 10))
    random.shuffle(liste)
    return liste
def generer_carre_3x3():
    nombres = neuf_entiers()

    carre = [
        nombres[0:3],
        nombres[3:6],
        nombres[6:9]
    ]

    return carre
def main():
    carre = generer_carre_3x3()

    print("Carré généré :")
    afficher_tableau(carre)

    if magique(carre):
        print("✅ C'est un carré magique !")
    else:
        print("❌ Ce n'est pas un carré magique.")

main()